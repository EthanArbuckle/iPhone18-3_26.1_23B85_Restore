@interface ABSDeleteObject
- (ABSDeleteObject)initWithGuid:(id)guid;
- (NSString)description;
- (id)createProtobufWithOptions:(id)options;
@end

@implementation ABSDeleteObject

- (ABSDeleteObject)initWithGuid:(id)guid
{
  guidCopy = guid;
  v8.receiver = self;
  v8.super_class = ABSDeleteObject;
  v5 = [(ABSDeleteObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ABSDeleteObject *)v5 setGuid:guidCopy];
  }

  return v6;
}

- (id)createProtobufWithOptions:(id)options
{
  v4 = [[ABSPBSyncObject alloc] initWithMemo:@"Delete"];
  v5 = objc_alloc_init(ABSPBDeleteWrapper);
  [(ABSPBSyncObject *)v4 setDeleteWrapper:v5];

  guid = [(ABSDeleteObject *)self guid];
  deleteWrapper = [(ABSPBSyncObject *)v4 deleteWrapper];
  [deleteWrapper setGuid:guid];

  data = [(ABSPBSyncObject *)v4 data];

  return data;
}

- (NSString)description
{
  guid = [(ABSDeleteObject *)self guid];
  v3 = [NSString stringWithFormat:@"<ABSContactsDeleteObject:%@>", guid];

  return v3;
}

@end