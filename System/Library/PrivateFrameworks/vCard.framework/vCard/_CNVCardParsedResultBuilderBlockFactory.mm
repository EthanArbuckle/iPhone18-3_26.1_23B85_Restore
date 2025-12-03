@interface _CNVCardParsedResultBuilderBlockFactory
- (_CNVCardParsedResultBuilderBlockFactory)initWithBlock:(id)block;
@end

@implementation _CNVCardParsedResultBuilderBlockFactory

- (_CNVCardParsedResultBuilderBlockFactory)initWithBlock:(id)block
{
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = _CNVCardParsedResultBuilderBlockFactory;
  v5 = [(_CNVCardParsedResultBuilderBlockFactory *)&v10 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;

    v8 = v5;
  }

  return v5;
}

@end