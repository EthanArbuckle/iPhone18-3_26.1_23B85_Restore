@interface SISchemaOrderedAnyEvent(Construction)
+ (id)orderedAnyEventWithAnyEvent:()Construction timestamp:;
+ (id)orderedAnyEventWithAnyEvent:()Construction timestamp:clockIdentifier:;
@end

@implementation SISchemaOrderedAnyEvent(Construction)

+ (id)orderedAnyEventWithAnyEvent:()Construction timestamp:
{
  v5 = MEMORY[0x1E69CF598];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = [v6 loggingRepresentation];

  [v8 setTimestamp:v9];
  v10 = objc_alloc_init(MEMORY[0x1E69CF5C0]);
  [v10 setMetadata:v8];
  [v10 setEvent:v7];

  return v10;
}

+ (id)orderedAnyEventWithAnyEvent:()Construction timestamp:clockIdentifier:
{
  v7 = a5;
  v8 = a3;
  v9 = [[SiriAnalyticsLogicalTimeStamp alloc] initWithMachAbsoluteTime:a4 clockIdentifier:v7];

  v10 = [MEMORY[0x1E69CF5C0] orderedAnyEventWithAnyEvent:v8 timestamp:v9];

  return v10;
}

@end