@interface SPUISICloudDriveAppLibraryCollectionObserver
+ (SPUISICloudDriveAppLibraryCollectionObserver)shared;
- (void)beginObserving;
- (void)endObserving;
- (void)updateWithDomains:(id)a3;
@end

@implementation SPUISICloudDriveAppLibraryCollectionObserver

+ (SPUISICloudDriveAppLibraryCollectionObserver)shared
{
  if (qword_2804257B0 != -1)
  {
    swift_once();
  }

  v3 = qword_280425AC0;

  return v3;
}

- (void)beginObserving
{
  v2 = self;
  sub_26B8BC9B4();
}

- (void)endObserving
{
  v2 = self;
  sub_26B8BD228();
}

- (void)updateWithDomains:(id)a3
{
  if (a3)
  {
    sub_26B8C0840(0, &qword_280425158, 0x277CC6420);
    v4 = sub_26B8C7EF4();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_26B8BD694(v4);
}

@end