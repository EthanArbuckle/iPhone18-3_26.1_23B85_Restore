@interface ABSDeleteObject
- (ABSDeleteObject)initWithGuid:(id)a3;
- (NSString)description;
- (id)createProtobufWithOptions:(id)a3;
@end

@implementation ABSDeleteObject

- (ABSDeleteObject)initWithGuid:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ABSDeleteObject;
  v5 = [(ABSDeleteObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ABSDeleteObject *)v5 setGuid:v4];
  }

  return v6;
}

- (id)createProtobufWithOptions:(id)a3
{
  v4 = [[ABSPBSyncObject alloc] initWithMemo:@"Delete"];
  v5 = objc_alloc_init(ABSPBDeleteWrapper);
  [(ABSPBSyncObject *)v4 setDeleteWrapper:v5];

  v6 = [(ABSDeleteObject *)self guid];
  v7 = [(ABSPBSyncObject *)v4 deleteWrapper];
  [v7 setGuid:v6];

  v8 = [(ABSPBSyncObject *)v4 data];

  return v8;
}

- (NSString)description
{
  v2 = [(ABSDeleteObject *)self guid];
  v3 = [NSString stringWithFormat:@"<ABSContactsDeleteObject:%@>", v2];

  return v3;
}

@end