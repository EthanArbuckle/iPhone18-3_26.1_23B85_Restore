@interface PFSharingRemakerOperation
+ (id)remakerOperationWithInputType:(int64_t)type videoURL:(id)l imageURL:(id)rL adjustmentData:(id)data;
- (PFSharingRemakerOperation)init;
@end

@implementation PFSharingRemakerOperation

- (PFSharingRemakerOperation)init
{
  v6.receiver = self;
  v6.super_class = PFSharingRemakerOperation;
  v2 = [(PFSharingRemakerOperation *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [(PFSharingRemakerOperation *)v2 _setUUID:uUIDString];
  }

  return v2;
}

+ (id)remakerOperationWithInputType:(int64_t)type videoURL:(id)l imageURL:(id)rL adjustmentData:(id)data
{
  lCopy = l;
  rLCopy = rL;
  dataCopy = data;
  v12 = objc_alloc_init(PFSharingRemakerOperation);
  [(PFSharingRemakerOperation *)v12 _setInputType:type];
  if ((type - 1) <= 2)
  {
    v13 = [[PFVideoSharingOperation alloc] initWithVideoURL:lCopy adjustmentData:dataCopy];
    [(PFSharingRemakerOperation *)v12 _setVideoOperation:v13];
  }

  if (type <= 1)
  {
    v14 = [[PFPhotoSharingOperation alloc] initWithImageURL:rLCopy adjustmentData:dataCopy];
    [(PFSharingRemakerOperation *)v12 _setImageOperation:v14];
  }

  return v12;
}

@end