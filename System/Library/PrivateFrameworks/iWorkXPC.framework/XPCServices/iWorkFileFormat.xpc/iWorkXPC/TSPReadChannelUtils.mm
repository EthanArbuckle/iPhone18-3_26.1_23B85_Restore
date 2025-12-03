@interface TSPReadChannelUtils
+ (id)dataFromReadChannel:(id)channel;
@end

@implementation TSPReadChannelUtils

+ (id)dataFromReadChannel:(id)channel
{
  channelCopy = channel;
  v5 = channelCopy;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10004BE0C;
  v21 = sub_10004BE1C;
  v22 = 0;
  if (channelCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_10004BE0C;
    v15 = sub_10004BE1C;
    v16 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004BE24;
    v10[3] = &unk_1001C9260;
    v10[4] = &v11;
    v10[5] = &v17;
    v10[6] = self;
    [channelCopy readWithHandlerAndWait:v10];
    v6 = v12[5];
    if (v6)
    {
      objc_storeStrong(v18 + 5, v6);
    }

    _Block_object_dispose(&v11, 8);

    v7 = v18[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v17, 8);

  return v8;
}

@end