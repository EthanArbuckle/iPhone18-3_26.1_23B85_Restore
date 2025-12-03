@interface MFPlainTextDocument
- (id)archivedRepresentation;
- (void)appendArchivedRepresentation:(id)representation;
- (void)appendString:(id)string withQuoteLevel:(unsigned int)level;
- (void)dealloc;
- (void)getString:(id *)string quoteLevel:(unsigned int *)level ofFragmentAtIndex:(unint64_t)index;
@end

@implementation MFPlainTextDocument

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFPlainTextDocument;
  [(MFPlainTextDocument *)&v2 dealloc];
}

- (void)appendString:(id)string withQuoteLevel:(unsigned int)level
{
  stringCopy = string;
  text = self->_text;
  if (!text)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v8 = self->_text;
    self->_text = v7;

    text = self->_text;
  }

  v9 = [(NSMutableString *)text length];
  v10 = [stringCopy length];
  [(NSMutableString *)self->_text appendString:stringCopy];
  if (!self->_fragments)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    fragments = self->_fragments;
    self->_fragments = v11;
  }

  v13 = objc_alloc_init(MFPlainTextFragment);
  v13->_range.location = v9;
  v13->_range.length = v10;
  v13->_quoteLevel = level;
  [(NSMutableArray *)self->_fragments addObject:v13];
}

- (void)getString:(id *)string quoteLevel:(unsigned int *)level ofFragmentAtIndex:(unint64_t)index
{
  v8 = [(NSMutableArray *)self->_fragments objectAtIndex:index];
  v9 = v8;
  if (string)
  {
    v10 = v8;
    v8 = [(NSMutableString *)self->_text substringWithRange:v8[1], v8[2]];
    v9 = v10;
    *string = v8;
  }

  if (level)
  {
    *level = *(v9 + 6);
  }

  MEMORY[0x2821F96F8](v8, v9);
}

- (id)archivedRepresentation
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(NSMutableArray *)self->_fragments count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v12 = 0;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v11 = 0;
      [(MFPlainTextDocument *)self getString:&v11 quoteLevel:&v12 ofFragmentAtIndex:i];
      v8 = v11;
      [dictionary setObject:v8 forKey:@"string"];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      [dictionary setObject:v9 forKey:@"quoteLevel"];

      [array addObject:dictionary];
    }
  }

  return array;
}

- (void)appendArchivedRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [representationCopy objectAtIndex:i];
      v8 = [v7 objectForKey:@"string"];
      v9 = [v7 objectForKey:@"quoteLevel"];
      unsignedIntValue = [v9 unsignedIntValue];

      [(MFPlainTextDocument *)self appendString:v8 withQuoteLevel:unsignedIntValue];
    }
  }
}

@end