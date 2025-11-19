@interface TranscriptModelBuilder
- (void)parser:(id)a3 didEndElementType:(int64_t)a4;
- (void)parser:(id)a3 didStartElementType:(int64_t)a4;
- (void)parser:(id)a3 foundCharacters:(id)a4;
- (void)parser:(id)a3 parseErrorOccurred:(id)a4;
- (void)parser:(id)a3 validationErrorOccurred:(id)a4;
- (void)parserDidEndDocument:(id)a3;
- (void)parserDidStartDocument:(id)a3;
@end

@implementation TranscriptModelBuilder

- (void)parser:(id)a3 didStartElementType:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1D9143A90(v6, a4);
}

- (void)parser:(id)a3 didEndElementType:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1D9144B88(a4);
}

- (void)parser:(id)a3 foundCharacters:(id)a4
{
  v6 = sub_1D917820C();
  v8 = v7;
  v9 = a3;
  v10 = self;
  sub_1D9144DE4(v6, v8);
}

- (void)parserDidStartDocument:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D9145044();
}

- (void)parserDidEndDocument:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D9145358();
}

- (void)parser:(id)a3 parseErrorOccurred:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1D91456EC(v8);
}

- (void)parser:(id)a3 validationErrorOccurred:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1D9145B14(v8);
}

@end