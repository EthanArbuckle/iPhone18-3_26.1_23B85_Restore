@interface MFPlainTextDocument
- (id)archivedRepresentation;
- (void)appendArchivedRepresentation:(id)a3;
- (void)appendString:(id)a3 withQuoteLevel:(unsigned int)a4;
- (void)dealloc;
- (void)getString:(id *)a3 quoteLevel:(unsigned int *)a4 ofFragmentAtIndex:(unint64_t)a5;
@end

@implementation MFPlainTextDocument

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFPlainTextDocument;
  [(MFPlainTextDocument *)&v2 dealloc];
}

- (void)appendString:(id)a3 withQuoteLevel:(unsigned int)a4
{
  v14 = a3;
  text = self->_text;
  if (!text)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v8 = self->_text;
    self->_text = v7;

    text = self->_text;
  }

  v9 = [(NSMutableString *)text length];
  v10 = [v14 length];
  [(NSMutableString *)self->_text appendString:v14];
  if (!self->_fragments)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    fragments = self->_fragments;
    self->_fragments = v11;
  }

  v13 = objc_alloc_init(MFPlainTextFragment);
  v13->_range.location = v9;
  v13->_range.length = v10;
  v13->_quoteLevel = a4;
  [(NSMutableArray *)self->_fragments addObject:v13];
}

- (void)getString:(id *)a3 quoteLevel:(unsigned int *)a4 ofFragmentAtIndex:(unint64_t)a5
{
  v8 = [(NSMutableArray *)self->_fragments objectAtIndex:a5];
  v9 = v8;
  if (a3)
  {
    v10 = v8;
    v8 = [(NSMutableString *)self->_text substringWithRange:v8[1], v8[2]];
    v9 = v10;
    *a3 = v8;
  }

  if (a4)
  {
    *a4 = *(v9 + 6);
  }

  MEMORY[0x2821F96F8](v8, v9);
}

- (id)archivedRepresentation
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(NSMutableArray *)self->_fragments count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v12 = 0;
      v7 = [MEMORY[0x277CBEB38] dictionary];
      v11 = 0;
      [(MFPlainTextDocument *)self getString:&v11 quoteLevel:&v12 ofFragmentAtIndex:i];
      v8 = v11;
      [v7 setObject:v8 forKey:@"string"];
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v12];
      [v7 setObject:v9 forKey:@"quoteLevel"];

      [v3 addObject:v7];
    }
  }

  return v3;
}

- (void)appendArchivedRepresentation:(id)a3
{
  v11 = a3;
  v4 = [v11 count];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [v11 objectAtIndex:i];
      v8 = [v7 objectForKey:@"string"];
      v9 = [v7 objectForKey:@"quoteLevel"];
      v10 = [v9 unsignedIntValue];

      [(MFPlainTextDocument *)self appendString:v8 withQuoteLevel:v10];
    }
  }
}

@end