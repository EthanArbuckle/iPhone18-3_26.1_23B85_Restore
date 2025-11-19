@interface ICDPlaybackPositionResponseDataSync
- (ICDPlaybackPositionResponseDataSync)initWithResponseDictionary:(id)a3 forDomain:(id)a4;
- (id)payloadDataForUpdateResponseKey:(id)a3;
- (void)_deserializeResponseDictionary:(id)a3;
@end

@implementation ICDPlaybackPositionResponseDataSync

- (void)_deserializeResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100055D44;
    v21[3] = &unk_1001DB3B8;
    v6 = v4;
    v22 = v6;
    v7 = objc_retainBlock(v21);
    (v7[2])(v7, self->_deletedKeys, @"peer-ops", @"deletes", &stru_1001DB3F8);
    updatedKeys = self->_updatedKeys;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100056030;
    v20[3] = &unk_1001DB420;
    v20[4] = self;
    (v7[2])(v7, updatedKeys, @"peer-ops", @"puts", v20);
    (v7[2])(v7, self->_conflictedKeys, @"ops", @"rejected", &stru_1001DB440);
    successfullyUpdatedKeys = self->_successfullyUpdatedKeys;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100056064;
    v19[3] = &unk_1001DB420;
    v19[4] = self;
    (v7[2])(v7, successfullyUpdatedKeys, @"ops", @"put-ok", v19);
    successfullyDeletedKeys = self->_successfullyDeletedKeys;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100056090;
    v18[3] = &unk_1001DB420;
    v18[4] = self;
    (v7[2])(v7, successfullyDeletedKeys, @"ops", @"deleted-ok", v18);
    v11 = [v6 valueForKey:@"version"];
    syncAnchor = self->_syncAnchor;
    self->_syncAnchor = v11;

    v13 = self->_syncAnchor;
    if ((_NSIsNSString() & 1) == 0)
    {
      v14 = self->_syncAnchor;
      v15 = objc_opt_respondsToSelector();
      v16 = self->_syncAnchor;
      if (v15)
      {
        v17 = [(NSString *)v16 stringValue];
        v16 = self->_syncAnchor;
      }

      else
      {
        v17 = 0;
      }

      self->_syncAnchor = v17;
    }
  }
}

- (id)payloadDataForUpdateResponseKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_responseOpEntiesByKey objectForKey:v4];
  v6 = [v5 objectForKey:@"value"];

  v7 = [(ICDPlaybackPositionResponseDataBase *)self dataByInflatingWithNoZipHeader:v6];
  if (v7)
  {
    v8 = v7;
    v9 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%{public}@ successfully unzipped data for key %{public}@", &v11, 0x16u);
    }
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (ICDPlaybackPositionResponseDataSync)initWithResponseDictionary:(id)a3 forDomain:(id)a4
{
  v6 = a3;
  v21.receiver = self;
  v21.super_class = ICDPlaybackPositionResponseDataSync;
  v7 = [(ICDPlaybackPositionResponseDataBase *)&v21 initWithDomain:a4];
  if (v7)
  {
    v8 = +[NSMutableDictionary dictionary];
    responseOpEntiesByKey = v7->_responseOpEntiesByKey;
    v7->_responseOpEntiesByKey = v8;

    v10 = +[NSMutableArray array];
    updatedKeys = v7->_updatedKeys;
    v7->_updatedKeys = v10;

    v12 = +[NSMutableArray array];
    deletedKeys = v7->_deletedKeys;
    v7->_deletedKeys = v12;

    v14 = +[NSMutableArray array];
    conflictedKeys = v7->_conflictedKeys;
    v7->_conflictedKeys = v14;

    v16 = +[NSMutableArray array];
    successfullyUpdatedKeys = v7->_successfullyUpdatedKeys;
    v7->_successfullyUpdatedKeys = v16;

    v18 = +[NSMutableArray array];
    successfullyDeletedKeys = v7->_successfullyDeletedKeys;
    v7->_successfullyDeletedKeys = v18;

    [(ICDPlaybackPositionResponseDataSync *)v7 _deserializeResponseDictionary:v6];
  }

  return v7;
}

@end