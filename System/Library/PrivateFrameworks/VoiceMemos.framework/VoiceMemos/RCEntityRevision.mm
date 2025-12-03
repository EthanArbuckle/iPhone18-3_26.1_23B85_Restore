@interface RCEntityRevision
- (int64_t)recordingID;
- (int64_t)revisionID;
- (int64_t)revisionType;
- (void)setRecordingID:(int64_t)d;
- (void)setRevisionID:(int64_t)d;
- (void)setRevisionType:(int64_t)type;
@end

@implementation RCEntityRevision

- (int64_t)revisionType
{
  [(RCEntityRevision *)self willAccessValueForKey:@"revision_type"];
  v3 = [(RCEntityRevision *)self primitiveValueForKey:@"revision_type"];
  intValue = [v3 intValue];

  [(RCEntityRevision *)self didAccessValueForKey:@"revision_type"];
  return intValue;
}

- (void)setRevisionType:(int64_t)type
{
  [(RCEntityRevision *)self willChangeValueForKey:@"revision_type"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [(RCEntityRevision *)self setPrimitiveValue:v5 forKey:@"revision_type"];

  [(RCEntityRevision *)self didChangeValueForKey:@"revision_type"];
}

- (int64_t)revisionID
{
  [(RCEntityRevision *)self willAccessValueForKey:@"revision_id"];
  v3 = [(RCEntityRevision *)self primitiveValueForKey:@"revision_id"];
  longLongValue = [v3 longLongValue];

  [(RCEntityRevision *)self didAccessValueForKey:@"revision_id"];
  return longLongValue;
}

- (void)setRevisionID:(int64_t)d
{
  [(RCEntityRevision *)self willChangeValueForKey:@"revision_id"];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  [(RCEntityRevision *)self setPrimitiveValue:v5 forKey:@"revision_id"];

  [(RCEntityRevision *)self didChangeValueForKey:@"revision_id"];
}

- (int64_t)recordingID
{
  [(RCEntityRevision *)self willAccessValueForKey:@"recording_id"];
  v3 = [(RCEntityRevision *)self primitiveValueForKey:@"recording_id"];
  longLongValue = [v3 longLongValue];

  [(RCEntityRevision *)self didAccessValueForKey:@"recording_id"];
  return longLongValue;
}

- (void)setRecordingID:(int64_t)d
{
  [(RCEntityRevision *)self willChangeValueForKey:@"recording_id"];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  [(RCEntityRevision *)self setPrimitiveValue:v5 forKey:@"recording_id"];

  [(RCEntityRevision *)self didChangeValueForKey:@"recording_id"];
}

@end