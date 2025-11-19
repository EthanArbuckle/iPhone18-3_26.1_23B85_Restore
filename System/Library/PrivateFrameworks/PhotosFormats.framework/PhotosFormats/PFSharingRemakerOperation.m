@interface PFSharingRemakerOperation
+ (id)remakerOperationWithInputType:(int64_t)a3 videoURL:(id)a4 imageURL:(id)a5 adjustmentData:(id)a6;
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
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    [(PFSharingRemakerOperation *)v2 _setUUID:v4];
  }

  return v2;
}

+ (id)remakerOperationWithInputType:(int64_t)a3 videoURL:(id)a4 imageURL:(id)a5 adjustmentData:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc_init(PFSharingRemakerOperation);
  [(PFSharingRemakerOperation *)v12 _setInputType:a3];
  if ((a3 - 1) <= 2)
  {
    v13 = [[PFVideoSharingOperation alloc] initWithVideoURL:v9 adjustmentData:v11];
    [(PFSharingRemakerOperation *)v12 _setVideoOperation:v13];
  }

  if (a3 <= 1)
  {
    v14 = [[PFPhotoSharingOperation alloc] initWithImageURL:v10 adjustmentData:v11];
    [(PFSharingRemakerOperation *)v12 _setImageOperation:v14];
  }

  return v12;
}

@end