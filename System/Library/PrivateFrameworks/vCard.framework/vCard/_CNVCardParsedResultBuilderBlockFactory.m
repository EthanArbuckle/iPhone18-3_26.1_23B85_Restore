@interface _CNVCardParsedResultBuilderBlockFactory
- (_CNVCardParsedResultBuilderBlockFactory)initWithBlock:(id)a3;
@end

@implementation _CNVCardParsedResultBuilderBlockFactory

- (_CNVCardParsedResultBuilderBlockFactory)initWithBlock:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _CNVCardParsedResultBuilderBlockFactory;
  v5 = [(_CNVCardParsedResultBuilderBlockFactory *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    block = v5->_block;
    v5->_block = v6;

    v8 = v5;
  }

  return v5;
}

@end