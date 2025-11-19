@interface TTSAssetMAStrategy.DownloadSourceExtractor
- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6;
- (void)parser:(id)a3 didStartElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6 attributes:(id)a7;
- (void)parser:(id)a3 foundCharacters:(id)a4;
@end

@implementation TTSAssetMAStrategy.DownloadSourceExtractor

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

  sub_1B1C2CA98();
  v14 = a3;
  v15 = self;
  sub_1B1B3AB4C(v15, v11, v13);
}

- (void)parser:(id)a3 didEndElement:(id)a4 namespaceURI:(id)a5 qualifiedName:(id)a6
{
  sub_1B1C2CB58();
  if (a5)
  {
    sub_1B1C2CB58();
  }

  if (a6)
  {
    sub_1B1C2CB58();
  }

  v10 = a3;
  v11 = self;
  sub_1B1B3ACE8();
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  sub_1B1C2CB58();
  v6 = a3;
  v7 = self;
  sub_1B1B3AEDC();
}

@end