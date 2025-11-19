@interface WOSpokenUtilities
+ (NSString)standardPause;
+ (NSString)textToSpeechEndOfSentence;
+ (id)appendEndPhrasePunctuationWithPhrase:(id)a3;
+ (id)spokenMetricWithActivityType:(id)a3 value:(double)a4 distanceType:(unint64_t)a5 metricType:(unint64_t)a6 formattingManager:(id)a7;
+ (id)spokenPaceForSingleDistanceUnitWithDistance:(id)a3 distanceType:(unint64_t)a4 duration:(double)a5 formattingManager:(id)a6;
+ (id)spokenPaceWithDistance:(id)a3 distanceType:(unint64_t)a4 duration:(double)a5 metricType:(unint64_t)a6 formattingManager:(id)a7;
+ (id)textToSpeechPauseWithDurationInMilliseconds:(unint64_t)a3;
- (WOSpokenUtilities)init;
@end

@implementation WOSpokenUtilities

+ (NSString)standardPause
{
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v2);

  MEMORY[0x20F2E6D80](92, 0xE100000000000000);
  v3 = MEMORY[0x20F2E6C00](0x3D65737561705C1BLL, 0xE800000000000000);

  return v3;
}

+ (id)textToSpeechPauseWithDurationInMilliseconds:(unint64_t)a3
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v3);

  MEMORY[0x20F2E6D80](92, 0xE100000000000000);
  v4 = MEMORY[0x20F2E6C00](0x3D65737561705C1BLL, 0xE800000000000000);

  return v4;
}

+ (NSString)textToSpeechEndOfSentence
{
  v2 = MEMORY[0x20F2E6C00](0x5C313D736F655C1BLL, 0xE800000000000000);

  return v2;
}

+ (id)spokenMetricWithActivityType:(id)a3 value:(double)a4 distanceType:(unint64_t)a5 metricType:(unint64_t)a6 formattingManager:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = specialized static SpokenUtilities.spokenMetric(activityType:value:distanceType:metricType:formattingManager:)(v11, a5, a6, v12, a4);
  v15 = v14;

  v16 = MEMORY[0x20F2E6C00](v13, v15);

  return v16;
}

+ (id)spokenPaceWithDistance:(id)a3 distanceType:(unint64_t)a4 duration:(double)a5 metricType:(unint64_t)a6 formattingManager:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = specialized static SpokenUtilities.spokenPace(distance:distanceType:duration:metricType:formattingManager:)(v11, a4, a6, v12, a5);
  v15 = v14;

  v16 = MEMORY[0x20F2E6C00](v13, v15);

  return v16;
}

+ (id)spokenPaceForSingleDistanceUnitWithDistance:(id)a3 distanceType:(unint64_t)a4 duration:(double)a5 formattingManager:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = specialized static SpokenUtilities.spokenPaceForSingleDistanceUnit(distance:distanceType:duration:formattingManager:)(v9, a4, v10, a5);
  v13 = v12;

  v14 = MEMORY[0x20F2E6C00](v11, v13);

  return v14;
}

+ (id)appendEndPhrasePunctuationWithPhrase:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v3, v4);
  v7 = v6;

  v8 = MEMORY[0x20F2E6C00](v5, v7);

  return v8;
}

- (WOSpokenUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SpokenUtilities();
  return [(WOSpokenUtilities *)&v3 init];
}

@end