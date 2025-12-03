@interface WOSpokenUtilities
+ (NSString)standardPause;
+ (NSString)textToSpeechEndOfSentence;
+ (id)appendEndPhrasePunctuationWithPhrase:(id)phrase;
+ (id)spokenMetricWithActivityType:(id)type value:(double)value distanceType:(unint64_t)distanceType metricType:(unint64_t)metricType formattingManager:(id)manager;
+ (id)spokenPaceForSingleDistanceUnitWithDistance:(id)distance distanceType:(unint64_t)type duration:(double)duration formattingManager:(id)manager;
+ (id)spokenPaceWithDistance:(id)distance distanceType:(unint64_t)type duration:(double)duration metricType:(unint64_t)metricType formattingManager:(id)manager;
+ (id)textToSpeechPauseWithDurationInMilliseconds:(unint64_t)milliseconds;
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

+ (id)textToSpeechPauseWithDurationInMilliseconds:(unint64_t)milliseconds
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

+ (id)spokenMetricWithActivityType:(id)type value:(double)value distanceType:(unint64_t)distanceType metricType:(unint64_t)metricType formattingManager:(id)manager
{
  typeCopy = type;
  managerCopy = manager;
  v13 = specialized static SpokenUtilities.spokenMetric(activityType:value:distanceType:metricType:formattingManager:)(typeCopy, distanceType, metricType, managerCopy, value);
  v15 = v14;

  v16 = MEMORY[0x20F2E6C00](v13, v15);

  return v16;
}

+ (id)spokenPaceWithDistance:(id)distance distanceType:(unint64_t)type duration:(double)duration metricType:(unint64_t)metricType formattingManager:(id)manager
{
  distanceCopy = distance;
  managerCopy = manager;
  v13 = specialized static SpokenUtilities.spokenPace(distance:distanceType:duration:metricType:formattingManager:)(distanceCopy, type, metricType, managerCopy, duration);
  v15 = v14;

  v16 = MEMORY[0x20F2E6C00](v13, v15);

  return v16;
}

+ (id)spokenPaceForSingleDistanceUnitWithDistance:(id)distance distanceType:(unint64_t)type duration:(double)duration formattingManager:(id)manager
{
  distanceCopy = distance;
  managerCopy = manager;
  v11 = specialized static SpokenUtilities.spokenPaceForSingleDistanceUnit(distance:distanceType:duration:formattingManager:)(distanceCopy, type, managerCopy, duration);
  v13 = v12;

  v14 = MEMORY[0x20F2E6C00](v11, v13);

  return v14;
}

+ (id)appendEndPhrasePunctuationWithPhrase:(id)phrase
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