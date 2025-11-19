@interface ICDPlaybackPositionRequestContext
+ (id)libraryWithIdentifier:(id)a3;
- (ICDPlaybackPositionRequestContext)initWithEntity:(id)a3 clientIdentity:(id)a4;
- (ICDPlaybackPositionRequestContext)initWithLibraryIdentifier:(id)a3 domain:(id)a4 clientIdentity:(id)a5;
- (ICStoreRequestContext)storeRequestContext;
@end

@implementation ICDPlaybackPositionRequestContext

- (ICStoreRequestContext)storeRequestContext
{
  os_unfair_lock_lock(&self->_lock);
  storeRequestContext = self->_storeRequestContext;
  if (!storeRequestContext)
  {
    v4 = self->_userIdentity;
    if (v4)
    {
      v5 = [ICStoreRequestContext alloc];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100005F2C;
      v10[3] = &unk_1001DEFB8;
      v11 = v4;
      v6 = [v5 initWithBlock:v10];
      v7 = self->_storeRequestContext;
      self->_storeRequestContext = v6;
    }

    storeRequestContext = self->_storeRequestContext;
  }

  v8 = storeRequestContext;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (ICDPlaybackPositionRequestContext)initWithLibraryIdentifier:(id)a3 domain:(id)a4 clientIdentity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = ICDPlaybackPositionRequestContext;
  v11 = [(ICDPlaybackPositionRequestContext *)&v23 init];
  v12 = v11;
  if (v11)
  {
    v11->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v11->_playbackPositionDomain, a4);
    objc_storeStrong(&v12->_clientIdentity, a5);
    v13 = [ICDPlaybackPositionRequestContext libraryWithIdentifier:v8];
    library = v12->_library;
    v12->_library = v13;

    v15 = [(ML3MusicLibrary *)v12->_library accountDSID];
    v16 = v15;
    if (v15)
    {
      v17 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v15 longLongValue]);
      v18 = [ICUserIdentity specificAccountWithDSID:v17];
      userIdentity = v12->_userIdentity;
      v12->_userIdentity = v18;
    }

    else
    {
      v20 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v25 = v12;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%{public}@ MusicLibrary missing accountDSID. Using Active account.", buf, 0xCu);
      }

      v21 = +[ICUserIdentity activeAccount];
      v17 = v12->_userIdentity;
      v12->_userIdentity = v21;
    }
  }

  return v12;
}

- (ICDPlaybackPositionRequestContext)initWithEntity:(id)a3 clientIdentity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 libraryIdentifier];
  v10 = [v7 playbackPositionDomain];
  v11 = [(ICDPlaybackPositionRequestContext *)self initWithLibraryIdentifier:v9 domain:v10 clientIdentity:v8];

  if (v11)
  {
    objc_storeStrong(&v11->_entity, a3);
  }

  return v11;
}

+ (id)libraryWithIdentifier:(id)a3
{
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1000B4020;
  v18 = sub_1000B4030;
  v19 = 0;
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = +[ML3MusicLibrary allLibraries];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B4038;
  v11[3] = &unk_1001DD830;
  v12 = v3;
  v13 = &v14;
  [v4 enumerateObjectsUsingBlock:v11];

  v5 = v15[5];
  if (!v5)
  {
LABEL_3:
    v6 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v21 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "ICDPlaybackPositionRequestContext: Could not find library with uid=%{public}@. Falling back to autoupdatingSharedLibrary.", buf, 0xCu);
    }

    v7 = +[ML3MusicLibrary autoupdatingSharedLibrary];
    v8 = v15[5];
    v15[5] = v7;

    v5 = v15[5];
  }

  v9 = v5;
  _Block_object_dispose(&v14, 8);

  return v9;
}

@end