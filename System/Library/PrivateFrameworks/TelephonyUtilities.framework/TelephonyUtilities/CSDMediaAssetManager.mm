@interface CSDMediaAssetManager
- (void)saveLivePhotoWithPhotoURL:(id)a3 videoURL:(id)a4 completion:(id)a5;
- (void)saveVideoWithURL:(id)a3 completion:(id)a4;
@end

@implementation CSDMediaAssetManager

- (void)saveLivePhotoWithPhotoURL:(id)a3 videoURL:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "photoURL: %@ videoURL: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v23 = sub_100028654;
  v24 = sub_1000328B4;
  v25 = 0;
  v11 = [CUTWeakLinkClass() sharedPhotoLibrary];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10012A394;
  v18[3] = &unk_10061AE20;
  v12 = v7;
  v19 = v12;
  v13 = v8;
  v20 = v13;
  v21 = buf;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012A460;
  v15[3] = &unk_10061C1B8;
  v17 = buf;
  v14 = v9;
  v16 = v14;
  [v11 performChanges:v18 completionHandler:v15];

  _Block_object_dispose(buf, 8);
}

- (void)saveVideoWithURL:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (TUAllowLocalVideoRecording())
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "saveVideoWithURL: %@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x3032000000;
    v17 = sub_100028654;
    v18 = sub_1000328B4;
    v19 = 0;
    v8 = [CUTWeakLinkClass() sharedPhotoLibrary];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10012A798;
    v12[3] = &unk_10061C1E0;
    v13 = v5;
    p_buf = &buf;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10012A850;
    v9[3] = &unk_10061C1B8;
    v11 = &buf;
    v10 = v6;
    [v8 performChanges:v12 completionHandler:v9];

    _Block_object_dispose(&buf, 8);
  }
}

@end