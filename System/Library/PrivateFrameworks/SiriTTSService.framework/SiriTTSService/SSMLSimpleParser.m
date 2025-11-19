@interface SSMLSimpleParser
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parserDidStartDocument:(id)a3;
@end

@implementation SSMLSimpleParser

- (void)parserDidStartDocument:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B1BC7DF0();
}

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v11 = sub_1B1C2CB58();
  v13 = v12;
  if (a5)
  {
    sub_1B1C2CB58();
  }

  if (a6)
  {
    sub_1B1C2CB58();
  }

  v14 = sub_1B1C2CA98();
  v15 = a3;
  v16 = self;
  sub_1B1BC7EA4(v16, v11, v13, v17, v18, v19, v20, v14);
}

@end