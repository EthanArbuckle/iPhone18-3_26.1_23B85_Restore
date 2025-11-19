@interface MFSyncResponseQueue
- (BOOL)addItem:(id)a3;
@end

@implementation MFSyncResponseQueue

- (BOOL)addItem:(id)a3
{
  v4 = a3;
  if ([v4 responseType] == 17)
  {
    v5 = [v4 fetchResults];
    v7.receiver = self;
    v7.super_class = MFSyncResponseQueue;
    [(MFBufferedQueue *)&v7 addItem:v5];
  }

  return 1;
}

@end