@interface PLSyncFileStatusPair
- (PLSyncFileStatusPair)initWithPath:(id)a3;
@end

@implementation PLSyncFileStatusPair

- (PLSyncFileStatusPair)initWithPath:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLSyncFileStatusPair;
  v5 = [(PLSyncFileStatusPair *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    path = v5->_path;
    v5->_path = v6;

    [(PLSyncFileStatusPair *)v5 setStatus:0];
  }

  return v5;
}

@end