@interface HTMLSpeakableStringExtractor
- (void)parser:(id)a3 didEndElement:(id)a4;
- (void)parser:(id)a3 didStartElement:(id)a4 attributes:(id)a5;
- (void)parser:(id)a3 foundCharacters:(id)a4;
@end

@implementation HTMLSpeakableStringExtractor

- (void)parser:(id)a3 didStartElement:(id)a4 attributes:(id)a5
{
  v7 = sub_1B1C2CB58();
  v9 = v8;
  sub_1B1C2CA98();
  v10 = a3;
  v11 = self;
  sub_1B1B1CE18(v11, v7, v9);
}

- (void)parser:(id)a3 didEndElement:(id)a4
{
  sub_1B1C2CB58();
  v6 = a3;
  v7 = self;
  sub_1B1B1CF5C();
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v6 = sub_1B1C2CB58();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1B1B1D08C(v10, v6, v8);
}

@end