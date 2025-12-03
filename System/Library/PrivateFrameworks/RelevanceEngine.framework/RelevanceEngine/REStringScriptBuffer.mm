@interface REStringScriptBuffer
- (REStringScriptBuffer)initWithString:(id)string;
- (id)contentForLine:(unint64_t)line;
- (unsigned)current;
- (void)next;
@end

@implementation REStringScriptBuffer

- (REStringScriptBuffer)initWithString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = REStringScriptBuffer;
  v5 = [(REStringScriptBuffer *)&v9 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    string = v5->_string;
    v5->_string = v6;

    v5->_index = 0;
  }

  return v5;
}

- (unsigned)current
{
  index = self->_index;
  if (index >= [(NSString *)self->_string length])
  {
    return 0;
  }

  string = self->_string;
  v5 = self->_index;

  return [(NSString *)string characterAtIndex:v5];
}

- (void)next
{
  index = self->_index;
  if (index < [(NSString *)self->_string length])
  {
    ++self->_index;
  }
}

- (id)contentForLine:(unint64_t)line
{
  string = self->_string;
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v6 = [(NSString *)string componentsSeparatedByCharactersInSet:newlineCharacterSet];

  if ([v6 count] <= line)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndexedSubscript:line];
  }

  return v7;
}

@end