@interface VMUProgressBar
- (VMUProgressBar)init;
- (void)colorize:(unsigned int)colorize;
- (void)itemCompleteWithStatus:(BOOL)status;
- (void)setTitle:(id)title withTotalItems:(unint64_t)items;
- (void)updateItemName:(id)name;
@end

@implementation VMUProgressBar

- (void)setTitle:(id)title withTotalItems:(unint64_t)items
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  itemName = self->_itemName;
  self->_totalItems = items;
  self->_itemName = 0;

  self->_itemsDone = 0;
  self->_successes = 0;
  self->_color = 0;
  self->_failures = 0;
  v9 = *MEMORY[0x1E69E9848];
  v11 = +[VMUTerminalColorizer controlCodeResetString];
  v10 = v11;
  fprintf(v9, "\n%s%s\n", [v11 UTF8String], -[NSString UTF8String](self->_title, "UTF8String"));
}

- (VMUProgressBar)init
{
  v6.receiver = self;
  v6.super_class = VMUProgressBar;
  v2 = [(VMUProgressBar *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    itemCompletionLock = v2->_itemCompletionLock;
    v2->_itemCompletionLock = v3;
  }

  return v2;
}

- (void)updateItemName:(id)name
{
  objc_storeStrong(&self->_itemName, name);

  [(VMUProgressBar *)self _printProgressBar];
}

- (void)itemCompleteWithStatus:(BOOL)status
{
  statusCopy = status;
  [(NSLock *)self->_itemCompletionLock lock];
  ++self->_itemsDone;
  v5 = 48;
  if (statusCopy)
  {
    v5 = 40;
  }

  ++*(&self->super.isa + v5);
  [(VMUProgressBar *)self _printProgressBar];
  itemCompletionLock = self->_itemCompletionLock;

  [(NSLock *)itemCompletionLock unlock];
}

- (void)colorize:(unsigned int)colorize
{
  self->_color = colorize;
  v3 = *MEMORY[0x1E69E9848];
  v5 = [VMUTerminalColorizer startColorCodeString:238];
  v4 = v5;
  fputs([v5 UTF8String], v3);
}

@end