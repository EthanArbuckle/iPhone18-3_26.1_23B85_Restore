@interface JaliscoLoadBooksOperation
- (id)queryFilter;
- (void)main;
@end

@implementation JaliscoLoadBooksOperation

- (id)queryFilter
{
  v2 = [(JaliscoLoadBooksOperation *)self _queryFilterEncodedStringForDAAPNameString:@"com.apple.itunes.extended-media-kind"];
  v3 = [NSString stringWithFormat:@"('%@:%d')", v2, 0x400000];

  return v3;
}

- (void)main
{
  v3 = [(JaliscoLoadBooksOperation *)self queryStoreIDs];
  if (v3 && (-[JaliscoLoadBooksOperation queryStoreIDs](self, "queryStoreIDs"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, v3, !v5))
  {
    [(JaliscoLoadBooksOperation *)self setBooks:&__NSArray0__struct];

    [(CloudLibraryOperation *)self setStatus:1];
  }

  else
  {
    v6 = [[MSVXPCTransaction alloc] initWithName:@"JaliscoLoadBooksOperation"];
    [v6 beginTransaction];
    v7 = [(CloudLibraryOperation *)self connection];
    v8 = NSTemporaryDirectory();
    v41[0] = v8;
    v41[1] = @"com.apple.MediaServices";
    v9 = +[NSUUID UUID];
    v10 = [v9 UUIDString];
    v41[2] = v10;
    v11 = [NSArray arrayWithObjects:v41 count:3];
    v12 = [NSString pathWithComponents:v11];

    v40[0] = v12;
    v40[1] = @"books.daap";
    v13 = [NSArray arrayWithObjects:v40 count:2];
    v14 = [NSURL fileURLWithPathComponents:v13];

    v15 = [v7 databaseID];
    v16 = [(JaliscoLoadBooksOperation *)self metadataFilter];
    v17 = [(JaliscoLoadBooksOperation *)self queryFilter];
    v18 = [ICItemsRequest requestWithDatabaseID:v15 metadataFilter:v16 queryFilter:v17 purchaseTokens:0 includeHiddenItems:0];

    [v18 setResponseDataDestinationFileURL:v14];
    [v18 setVerificationInteractionLevel:2];
    v19 = os_log_create("com.apple.amp.itunescloudd", "SDK");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      if ([v18 method])
      {
        v22 = @"POST";
      }

      else
      {
        v22 = @"GET";
      }

      v23 = [v18 action];
      *buf = 138544386;
      *&buf[4] = v21;
      *&buf[12] = 2048;
      *&buf[14] = v18;
      *&buf[22] = 2114;
      v38 = v22;
      *v39 = 2114;
      *&v39[2] = v23;
      *&v39[10] = 2048;
      *&v39[12] = v7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending Books ItemsRequest [<%{public}@: %p method=%{public}@ action=%{public}@>] on Connection: [%p]", buf, 0x34u);
    }

    v24 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v38 = sub_1000DEE30;
    *v39 = sub_1000DEE40;
    *&v39[8] = 0;
    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_1000DEE48;
    v34 = &unk_1001DF8A8;
    v36 = buf;
    v25 = v24;
    v35 = v25;
    [v7 sendRequest:v18 withResponseHandler:&v31];
    dispatch_semaphore_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
    if ([*(*&buf[8] + 40) responseCode] == 200)
    {
      v26 = [*(*&buf[8] + 40) responseDataFileURL];
      v27 = [NSInputStream inputStreamWithURL:v26];

      v28 = [[DKDAAPParser alloc] initWithStream:v27];
      v29 = [[BooksParserDelegate alloc] initWithOperation:self];
      [v28 setDelegate:v29];
      [v28 parse];
    }

    if (self->_parserSuccess)
    {
      v30 = 1;
    }

    else
    {
      v30 = 2;
    }

    [(CloudLibraryOperation *)self setStatus:v30];
    [v6 endTransaction];

    _Block_object_dispose(buf, 8);
  }
}

@end