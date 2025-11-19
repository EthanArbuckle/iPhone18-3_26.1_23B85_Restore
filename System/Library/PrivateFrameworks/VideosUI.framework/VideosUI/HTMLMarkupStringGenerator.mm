@interface HTMLMarkupStringGenerator
- (void)parser:(id)a3 didEndElement:(unint64_t)a4;
- (void)parser:(id)a3 didFindCharacters:(id)a4;
- (void)parser:(id)a3 didStartElement:(unint64_t)a4;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parserDidFindNewline:(id)a3;
@end

@implementation HTMLMarkupStringGenerator

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1E3763590(v8);
}

- (void)parser:(id)a3 didStartElement:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1E3763740(a4);
}

- (void)parser:(id)a3 didEndElement:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_1E3763850();
}

- (void)parser:(id)a3 didFindCharacters:(id)a4
{
  v6 = sub_1E4205F14();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1E3763910(v6, v8);
}

- (void)parserDidFindNewline:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3763C18();
}

@end