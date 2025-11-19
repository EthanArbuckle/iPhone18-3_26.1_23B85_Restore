@interface UPNPDeviceDescriptionParser
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
@end

@implementation UPNPDeviceDescriptionParser

- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7
{
  v11 = sub_1E4205F14();
  v13 = v12;
  if (a5)
  {
    sub_1E4205F14();
  }

  if (a6)
  {
    sub_1E4205F14();
  }

  sub_1E4205C64();
  v14 = a3;
  v15 = self;
  sub_1E3F69FAC(v15, v11, v13);
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v6 = sub_1E4205F14();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1E3F6A310(v10, v6, v8);
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  sub_1E4205F14();
  if (a5)
  {
    sub_1E4205F14();
  }

  if (a6)
  {
    sub_1E4205F14();
  }

  v10 = a3;
  v11 = self;
  sub_1E3F6A610();
}

@end