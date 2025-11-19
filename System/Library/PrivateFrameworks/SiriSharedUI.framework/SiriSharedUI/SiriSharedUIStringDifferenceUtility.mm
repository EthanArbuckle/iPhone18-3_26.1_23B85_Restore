@interface SiriSharedUIStringDifferenceUtility
+ (_NSRange)findFirstDifferenceWithOriginalText:(id)a3 alternativeText:(id)a4;
- (_TtC12SiriSharedUI35SiriSharedUIStringDifferenceUtility)init;
@end

@implementation SiriSharedUIStringDifferenceUtility

+ (_NSRange)findFirstDifferenceWithOriginalText:(id)a3 alternativeText:(id)a4
{
  sub_21E4DCF78();
  sub_21E4DCF78();
  E012originalText011alternativeJ0So8_NSRangeVSS_SStFZ_0 = _s12SiriSharedUI0aB25UIStringDifferenceUtilityC09findFirstE012originalText011alternativeJ0So8_NSRangeVSS_SStFZ_0();
  v6 = v5;

  v7 = E012originalText011alternativeJ0So8_NSRangeVSS_SStFZ_0;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (_TtC12SiriSharedUI35SiriSharedUIStringDifferenceUtility)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SiriSharedUIStringDifferenceUtility();
  return [(SiriSharedUIStringDifferenceUtility *)&v3 init];
}

@end