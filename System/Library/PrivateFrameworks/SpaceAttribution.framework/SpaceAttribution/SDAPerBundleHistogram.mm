@interface SDAPerBundleHistogram
- (SDAPerBundleHistogram)init;
- (void)getNumAndSizeOfEventsFor:(int)for residency:(unsigned int)residency reply:(id)reply;
- (void)updateVolType:(int)type residency:(unsigned int)residency urgency:(int)urgency state:(int)state age:(unint64_t)age size:(unint64_t)size nanoSecSinceUpdate:(unint64_t)update;
@end

@implementation SDAPerBundleHistogram

- (SDAPerBundleHistogram)init
{
  v6.receiver = self;
  v6.super_class = SDAPerBundleHistogram;
  v2 = [(SDAPerBundleHistogram *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    perBundle = v2->_perBundle;
    v2->_perBundle = v3;
  }

  return v2;
}

- (void)updateVolType:(int)type residency:(unsigned int)residency urgency:(int)urgency state:(int)state age:(unint64_t)age size:(unint64_t)size nanoSecSinceUpdate:(unint64_t)update
{
  v22 = [NSNumber numberWithUnsignedLong:type];
  v15 = [NSNumber numberWithUnsignedLong:residency];
  v16 = [NSNumber numberWithUnsignedLong:urgency];
  v17 = [NSNumber numberWithUnsignedLong:state];
  v18 = [(NSMutableDictionary *)self->_perBundle objectForKey:v22];
  if (!v18)
  {
    v18 = objc_opt_new();
    [(NSMutableDictionary *)self->_perBundle setObject:v18 forKey:v22];
  }

  v19 = [v18 objectForKey:v15];
  if (!v19)
  {
    v19 = objc_opt_new();
    [v18 setObject:v19 forKey:v15];
  }

  v20 = [v19 objectForKey:v16];
  if (!v20)
  {
    v20 = objc_opt_new();
    [v19 setObject:v20 forKey:v16];
  }

  v21 = [v20 objectForKey:v17];
  if (!v21)
  {
    v21 = +[SDAHistogramElement newElement];
  }

  [v21 adjAge:age andSize:size nanoSecSinceUpdate:update];
  [v20 setObject:v21 forKey:v17];
}

- (void)getNumAndSizeOfEventsFor:(int)for residency:(unsigned int)residency reply:(id)reply
{
  replyCopy = reply;
  v9 = [NSNumber numberWithUnsignedLong:for];
  v10 = [NSNumber numberWithUnsignedLong:residency];
  v11 = [(NSMutableDictionary *)self->_perBundle objectForKey:v9];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 objectForKey:v10];
    v14 = v13;
    if (v13)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v19 = 0;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100026E90;
      v15[3] = &unk_100065670;
      v15[4] = &v28;
      v15[5] = &v24;
      v15[6] = &v20;
      v15[7] = &v16;
      [v13 enumerateKeysAndObjectsUsingBlock:v15];
      replyCopy[2](replyCopy, v29[3], v25[3], v21[3], v17[3]);
      _Block_object_dispose(&v16, 8);
      _Block_object_dispose(&v20, 8);
      _Block_object_dispose(&v24, 8);
      _Block_object_dispose(&v28, 8);
    }

    else
    {
      replyCopy[2](replyCopy, 0, 0, 0, 0);
    }
  }

  else
  {
    replyCopy[2](replyCopy, 0, 0, 0, 0);
  }
}

@end