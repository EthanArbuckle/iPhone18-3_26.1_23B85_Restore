@interface SiriNLUTypesPrintUtils
+ (id)printableSpanMatchResponseWithSpanMatchResponse:(id)response withUSOGraph:(BOOL)graph;
@end

@implementation SiriNLUTypesPrintUtils

+ (id)printableSpanMatchResponseWithSpanMatchResponse:(id)response withUSOGraph:(BOOL)graph
{
  responseCopy = response;
  static SiriNLUTypesPrintUtils.printableSpanMatchResponse(spanMatchResponse:withUSOGraph:)(responseCopy, graph);

  v6 = sub_1C8BD518C();

  return v6;
}

@end