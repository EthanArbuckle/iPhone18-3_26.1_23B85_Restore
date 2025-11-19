@interface VMUProgressBar
- (VMUProgressBar)init;
- (void)colorize:(unsigned int)a3;
- (void)itemCompleteWithStatus:(BOOL)a3;
- (void)setTitle:(id)a3 withTotalItems:(unint64_t)a4;
- (void)updateItemName:(id)a3;
@end

@implementation VMUProgressBar

- (void)setTitle:(id)a3 withTotalItems:(unint64_t)a4
{
  objc_storeStrong(&self->_title, a3);
  v7 = a3;
  itemName = self->_itemName;
  self->_totalItems = a4;
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

- (void)updateItemName:(id)a3
{
  objc_storeStrong(&self->_itemName, a3);

  [(VMUProgressBar *)self _printProgressBar];
}

- (void)itemCompleteWithStatus:(BOOL)a3
{
  v3 = a3;
  [(NSLock *)self->_itemCompletionLock lock];
  ++self->_itemsDone;
  v5 = 48;
  if (v3)
  {
    v5 = 40;
  }

  ++*(&self->super.isa + v5);
  [(VMUProgressBar *)self _printProgressBar];
  itemCompletionLock = self->_itemCompletionLock;

  [(NSLock *)itemCompletionLock unlock];
}

- (void)colorize:(unsigned int)a3
{
  self->_color = a3;
  v3 = *MEMORY[0x1E69E9848];
  v5 = [VMUTerminalColorizer startColorCodeString:238];
  v4 = v5;
  fputs([v5 UTF8String], v3);
}

@end