@interface RCEntityRevision
- (int64_t)recordingID;
- (int64_t)revisionID;
- (int64_t)revisionType;
- (void)setRecordingID:(int64_t)a3;
- (void)setRevisionID:(int64_t)a3;
- (void)setRevisionType:(int64_t)a3;
@end

@implementation RCEntityRevision

- (int64_t)revisionType
{
  [(RCEntityRevision *)self willAccessValueForKey:@"revision_type"];
  v3 = [(RCEntityRevision *)self primitiveValueForKey:@"revision_type"];
  v4 = [v3 intValue];

  [(RCEntityRevision *)self didAccessValueForKey:@"revision_type"];
  return v4;
}

- (void)setRevisionType:(int64_t)a3
{
  [(RCEntityRevision *)self willChangeValueForKey:@"revision_type"];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(RCEntityRevision *)self setPrimitiveValue:v5 forKey:@"revision_type"];

  [(RCEntityRevision *)self didChangeValueForKey:@"revision_type"];
}

- (int64_t)revisionID
{
  [(RCEntityRevision *)self willAccessValueForKey:@"revision_id"];
  v3 = [(RCEntityRevision *)self primitiveValueForKey:@"revision_id"];
  v4 = [v3 longLongValue];

  [(RCEntityRevision *)self didAccessValueForKey:@"revision_id"];
  return v4;
}

- (void)setRevisionID:(int64_t)a3
{
  [(RCEntityRevision *)self willChangeValueForKey:@"revision_id"];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [(RCEntityRevision *)self setPrimitiveValue:v5 forKey:@"revision_id"];

  [(RCEntityRevision *)self didChangeValueForKey:@"revision_id"];
}

- (int64_t)recordingID
{
  [(RCEntityRevision *)self willAccessValueForKey:@"recording_id"];
  v3 = [(RCEntityRevision *)self primitiveValueForKey:@"recording_id"];
  v4 = [v3 longLongValue];

  [(RCEntityRevision *)self didAccessValueForKey:@"recording_id"];
  return v4;
}

- (void)setRecordingID:(int64_t)a3
{
  [(RCEntityRevision *)self willChangeValueForKey:@"recording_id"];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [(RCEntityRevision *)self setPrimitiveValue:v5 forKey:@"recording_id"];

  [(RCEntityRevision *)self didChangeValueForKey:@"recording_id"];
}

@end