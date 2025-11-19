@interface ICMusicRestoreRequestParameters
- (ICMusicRestoreRequestParameters)initWithItemID:(id)a3 title:(id)a4 storeFrontID:(id)a5 mediaKind:(id)a6 accountID:(id)a7 matchStatus:(id)a8 flavor:(id)a9;
@end

@implementation ICMusicRestoreRequestParameters

- (ICMusicRestoreRequestParameters)initWithItemID:(id)a3 title:(id)a4 storeFrontID:(id)a5 mediaKind:(id)a6 accountID:(id)a7 matchStatus:(id)a8 flavor:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = ICMusicRestoreRequestParameters;
  v18 = [(ICMusicRestoreRequestParameters *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_adamID, a3);
    objc_storeStrong(&v19->_title, a4);
    objc_storeStrong(&v19->_storeFrontID, a5);
    objc_storeStrong(&v19->_mediaKind, a6);
    objc_storeStrong(&v19->_accountID, a7);
    objc_storeStrong(&v19->_matchStatus, a8);
    objc_storeStrong(&v19->_flavor, a9);
  }

  return v19;
}

@end