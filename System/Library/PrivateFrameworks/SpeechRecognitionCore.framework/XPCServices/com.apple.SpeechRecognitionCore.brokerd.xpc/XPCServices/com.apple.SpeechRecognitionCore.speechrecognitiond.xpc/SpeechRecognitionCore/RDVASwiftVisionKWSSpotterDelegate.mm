@interface RDVASwiftVisionKWSSpotterDelegate
- (void)keywordSpotterDidDetectKeywordWithEvent:(id)event;
@end

@implementation RDVASwiftVisionKWSSpotterDelegate

- (void)keywordSpotterDidDetectKeywordWithEvent:(id)event
{
  v3 = *(*self->_TtCs12_SwiftObject_opaque + 96);
  eventCopy = event;

  v6 = v3(v5);
  if (v6)
  {
    v7 = v6;
    sub_1000C9664();
    v8 = sub_1000C9AF4();

    sub_1000C9654();
    v10 = v9;
    v11 = sub_1000C9624();
    v12 = sub_1000C9644();
    v13 = sub_1000C9634();
    LODWORD(v14) = v10;
    [v7 didDetectKeywordWithKeyword:v8 score:v11 & 1 silenceAfter:v12 & 1 silenceBefore:v13 & 1 speechDuring:v14];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

@end