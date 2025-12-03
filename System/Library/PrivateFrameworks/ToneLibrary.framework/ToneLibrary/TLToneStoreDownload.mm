@interface TLToneStoreDownload
- (BOOL)isEqual:(id)equal;
- (BOOL)isRingtone;
- (NSString)albumTitle;
- (NSString)artistName;
- (NSString)genreName;
- (NSString)name;
- (NSString)toneIdentifier;
- (TLToneStoreDownload)init;
- (double)duration;
- (float)downloadProgress;
- (id)description;
- (unint64_t)hash;
- (unint64_t)storeItemIdentifier;
- (void)_setAlbumTitle:(id)title;
- (void)_setArtistName:(id)name;
- (void)_setDownloadProgress:(float)progress;
- (void)_setDuration:(double)duration;
- (void)_setGenreName:(id)name;
- (void)_setName:(id)name;
- (void)_setRingtone:(BOOL)ringtone;
- (void)_setStoreItemIdentifier:(unint64_t)identifier;
- (void)_setToneIdentifier:(id)identifier;
- (void)dealloc;
@end

@implementation TLToneStoreDownload

- (TLToneStoreDownload)init
{
  v19.receiver = self;
  v19.super_class = TLToneStoreDownload;
  v2 = [(TLToneStoreDownload *)&v19 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:v3];
    bundleIdentifier = [v5 bundleIdentifier];
    v7 = NSStringFromClass(v3);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v10 = [v4 stringWithFormat:@"%@.%@-%@-%@", bundleIdentifier, v7, @"AccessQueue", uUIDString];
    accessQueueLabel = v2->_accessQueueLabel;
    v2->_accessQueueLabel = v10;

    v12 = dispatch_queue_create([(NSString *)v2->_accessQueueLabel UTF8String], 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v12;

    uUID2 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString2 = [uUID2 UUIDString];
    v16 = [@"toneStoreDownload:" stringByAppendingString:uUIDString2];
    identifier = v2->_identifier;
    v2->_identifier = v16;
  }

  return v2;
}

- (void)dealloc
{
  accessQueue = self->_accessQueue;
  self->_accessQueue = 0;
  v4 = accessQueue;

  dispatch_sync(v4, &__block_literal_global_6);
  v5.receiver = self;
  v5.super_class = TLToneStoreDownload;
  [(TLToneStoreDownload *)&v5 dealloc];
}

- (NSString)name
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__TLToneStoreDownload_name__block_invoke;
  v5[3] = &unk_1E8578950;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setName:(id)name
{
  nameCopy = name;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__TLToneStoreDownload__setName___block_invoke;
  v7[3] = &unk_1E8578900;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(accessQueue, v7);
}

void __32__TLToneStoreDownload__setName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 24);
  v3 = v2;
  v4 = v3;
  if (v10 | v3)
  {
    if (v10)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {

LABEL_12:
      v7 = [*(a1 + 40) copy];
      v8 = *(a1 + 32);
      v9 = *(v8 + 24);
      *(v8 + 24) = v7;
      goto LABEL_13;
    }

    if (v10 != v3)
    {
      v6 = [v10 isEqualToString:v3];

      if (v6)
      {
        return;
      }

      goto LABEL_12;
    }
  }

LABEL_13:

  MEMORY[0x1EEE66BB8]();
}

- (NSString)albumTitle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__TLToneStoreDownload_albumTitle__block_invoke;
  v5[3] = &unk_1E8578950;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setAlbumTitle:(id)title
{
  titleCopy = title;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__TLToneStoreDownload__setAlbumTitle___block_invoke;
  v7[3] = &unk_1E8578900;
  v7[4] = self;
  v8 = titleCopy;
  v6 = titleCopy;
  dispatch_sync(accessQueue, v7);
}

void __38__TLToneStoreDownload__setAlbumTitle___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 32);
  v3 = v2;
  v4 = v3;
  if (v10 | v3)
  {
    if (v10)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {

LABEL_12:
      v7 = [*(a1 + 40) copy];
      v8 = *(a1 + 32);
      v9 = *(v8 + 32);
      *(v8 + 32) = v7;
      goto LABEL_13;
    }

    if (v10 != v3)
    {
      v6 = [v10 isEqualToString:v3];

      if (v6)
      {
        return;
      }

      goto LABEL_12;
    }
  }

LABEL_13:

  MEMORY[0x1EEE66BB8]();
}

- (NSString)artistName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__TLToneStoreDownload_artistName__block_invoke;
  v5[3] = &unk_1E8578950;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setArtistName:(id)name
{
  nameCopy = name;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__TLToneStoreDownload__setArtistName___block_invoke;
  v7[3] = &unk_1E8578900;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(accessQueue, v7);
}

void __38__TLToneStoreDownload__setArtistName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 40);
  v3 = v2;
  v4 = v3;
  if (v10 | v3)
  {
    if (v10)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {

LABEL_12:
      v7 = [*(a1 + 40) copy];
      v8 = *(a1 + 32);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
      goto LABEL_13;
    }

    if (v10 != v3)
    {
      v6 = [v10 isEqualToString:v3];

      if (v6)
      {
        return;
      }

      goto LABEL_12;
    }
  }

LABEL_13:

  MEMORY[0x1EEE66BB8]();
}

- (double)duration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__TLToneStoreDownload_duration__block_invoke;
  v5[3] = &unk_1E8578950;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __31__TLToneStoreDownload_duration__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_setDuration:(double)duration
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__TLToneStoreDownload__setDuration___block_invoke;
  v4[3] = &unk_1E8578CC0;
  v4[4] = self;
  *&v4[5] = duration;
  dispatch_sync(accessQueue, v4);
}

uint64_t __36__TLToneStoreDownload__setDuration___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (llround(*(v1 + 48) * 8388608.0) != llround(v2 * 8388608.0))
  {
    *(v1 + 48) = v2;
  }

  return result;
}

- (NSString)genreName
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__TLToneStoreDownload_genreName__block_invoke;
  v5[3] = &unk_1E8578950;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setGenreName:(id)name
{
  nameCopy = name;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__TLToneStoreDownload__setGenreName___block_invoke;
  v7[3] = &unk_1E8578900;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(accessQueue, v7);
}

void __37__TLToneStoreDownload__setGenreName___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 56);
  v3 = v2;
  v4 = v3;
  if (v10 | v3)
  {
    if (v10)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {

LABEL_12:
      v7 = [*(a1 + 40) copy];
      v8 = *(a1 + 32);
      v9 = *(v8 + 56);
      *(v8 + 56) = v7;
      goto LABEL_13;
    }

    if (v10 != v3)
    {
      v6 = [v10 isEqualToString:v3];

      if (v6)
      {
        return;
      }

      goto LABEL_12;
    }
  }

LABEL_13:

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)isRingtone
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__TLToneStoreDownload_isRingtone__block_invoke;
  v5[3] = &unk_1E8578950;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setRingtone:(BOOL)ringtone
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__TLToneStoreDownload__setRingtone___block_invoke;
  v4[3] = &unk_1E8578D08;
  v4[4] = self;
  ringtoneCopy = ringtone;
  dispatch_sync(accessQueue, v4);
}

uint64_t __36__TLToneStoreDownload__setRingtone___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 64) != v2)
  {
    *(v1 + 64) = v2;
  }

  return result;
}

- (unint64_t)storeItemIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__TLToneStoreDownload_storeItemIdentifier__block_invoke;
  v5[3] = &unk_1E8578950;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_setStoreItemIdentifier:(unint64_t)identifier
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__TLToneStoreDownload__setStoreItemIdentifier___block_invoke;
  v4[3] = &unk_1E8578CC0;
  v4[4] = self;
  v4[5] = identifier;
  dispatch_sync(accessQueue, v4);
}

uint64_t __47__TLToneStoreDownload__setStoreItemIdentifier___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 72) != v2)
  {
    *(v1 + 72) = v2;
  }

  return result;
}

- (float)downloadProgress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__TLToneStoreDownload_downloadProgress__block_invoke;
  v5[3] = &unk_1E8578950;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __39__TLToneStoreDownload_downloadProgress__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_setDownloadProgress:(float)progress
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__TLToneStoreDownload__setDownloadProgress___block_invoke;
  v4[3] = &unk_1E8579828;
  v4[4] = self;
  progressCopy = progress;
  dispatch_sync(accessQueue, v4);
}

uint64_t __44__TLToneStoreDownload__setDownloadProgress___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (llroundf(*(v1 + 80) * 8388600.0) != llroundf(v2 * 8388600.0))
  {
    *(v1 + 80) = v2;
  }

  return result;
}

- (NSString)toneIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__TLToneStoreDownload_toneIdentifier__block_invoke;
  v5[3] = &unk_1E8578950;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_setToneIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__TLToneStoreDownload__setToneIdentifier___block_invoke;
  v7[3] = &unk_1E8578900;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_sync(accessQueue, v7);
}

void __42__TLToneStoreDownload__setToneIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v10 = *(*(a1 + 32) + 88);
  v3 = v2;
  v4 = v3;
  if (v10 | v3)
  {
    if (v10)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {

LABEL_12:
      v7 = [*(a1 + 40) copy];
      v8 = *(a1 + 32);
      v9 = *(v8 + 88);
      *(v8 + 88) = v7;
      goto LABEL_13;
    }

    if (v10 != v3)
    {
      v6 = [v10 isEqualToString:v3];

      if (v6)
      {
        return;
      }

      goto LABEL_12;
    }
  }

LABEL_13:

  MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__TLToneStoreDownload_description__block_invoke;
  block[3] = &unk_1E8578900;
  v8 = v6;
  v12 = v8;
  selfCopy = self;
  dispatch_sync(accessQueue, block);
  [v8 appendString:@">"];
  v9 = v8;

  return v8;
}

uint64_t __34__TLToneStoreDownload_description__block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendFormat:@"; storeItemIdentifier = %llu", *(*(a1 + 40) + 72)];
  v2 = *(a1 + 40);
  if (*(v2 + 24))
  {
    [*(a1 + 32) appendFormat:@"; name = %@", *(v2 + 24)];
    v2 = *(a1 + 40);
  }

  if (*(v2 + 32))
  {
    [*(a1 + 32) appendFormat:@"; albumTitle = %@", *(v2 + 32)];
    v2 = *(a1 + 40);
  }

  if (*(v2 + 40))
  {
    [*(a1 + 32) appendFormat:@"; artistName = %@", *(v2 + 40)];
    v2 = *(a1 + 40);
  }

  if (*(v2 + 56))
  {
    [*(a1 + 32) appendFormat:@"; genreName = %@", *(v2 + 56)];
    v2 = *(a1 + 40);
  }

  if (*(v2 + 64))
  {
    v3 = kToneMediaKindRingtone;
  }

  else
  {
    v3 = kToneMediaKindAlertTone;
  }

  [*(a1 + 32) appendFormat:@"; mediaKind = %@", *v3];
  result = [*(a1 + 32) appendFormat:@"; downloadProgress = %f", *(*(a1 + 40) + 80)];
  if (*(*(a1 + 40) + 88))
  {
    return [*(a1 + 32) appendFormat:@"; toneIdentifier = %@", *(*(a1 + 40) + 88)];
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = self == equalCopy;
  if (self != equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      *(v14 + 24) = 1;
      accessQueue = self->_accessQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __31__TLToneStoreDownload_isEqual___block_invoke;
      block[3] = &unk_1E8579588;
      selfCopy = self;
      v12 = &v13;
      v10 = v5;
      dispatch_sync(accessQueue, block);
    }
  }

  v7 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);

  return v7;
}

void __31__TLToneStoreDownload_isEqual___block_invoke(int8x16_t *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  v1 = a1[3].i64[0];
  v4 = a1[2];
  v2 = *(v4.i64[0] + 8);
  block[1] = 3221225472;
  block[2] = __31__TLToneStoreDownload_isEqual___block_invoke_2;
  block[3] = &unk_1E85789C8;
  v7 = v1;
  v3 = v4.i64[0];
  v6 = vextq_s8(v4, v4, 8uLL);
  dispatch_sync(v2, block);
}

void __31__TLToneStoreDownload_isEqual___block_invoke_2(void *a1)
{
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 24) == 1 && *(a1[4] + 72) == *(a1[5] + 72);
  *(v2 + 24) = v3;
  v4 = *(a1[6] + 8);
  if (*(v4 + 24) != 1)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v5 = *(a1[5] + 24);
  v6 = *(a1[4] + 24);
  v7 = v5;
  v8 = v7;
  if (!(v6 | v7))
  {
    goto LABEL_15;
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (v6 != v7)
    {
      v10 = [v6 isEqualToString:v7];
      goto LABEL_16;
    }

LABEL_15:
    v10 = 1;
    goto LABEL_16;
  }

  v10 = 0;
LABEL_16:

  v4 = *(a1[6] + 8);
LABEL_17:
  *(v4 + 24) = v10;
  v11 = *(a1[6] + 8);
  if (*(v11 + 24) != 1)
  {
    v17 = 0;
    goto LABEL_30;
  }

  v12 = *(a1[5] + 32);
  v13 = *(a1[4] + 32);
  v14 = v12;
  v15 = v14;
  if (!(v13 | v14))
  {
    goto LABEL_28;
  }

  if (v13)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    if (v13 != v14)
    {
      v17 = [v13 isEqualToString:v14];
      goto LABEL_29;
    }

LABEL_28:
    v17 = 1;
    goto LABEL_29;
  }

  v17 = 0;
LABEL_29:

  v11 = *(a1[6] + 8);
LABEL_30:
  *(v11 + 24) = v17;
  v18 = *(a1[6] + 8);
  if (*(v18 + 24) == 1)
  {
    v19 = *(a1[5] + 40);
    v20 = *(a1[4] + 40);
    v21 = v19;
    v22 = v21;
    if (!(v20 | v21))
    {
      goto LABEL_37;
    }

    v23 = 0;
    if (!v20 || !v21)
    {
      goto LABEL_38;
    }

    if (v20 == v21)
    {
LABEL_37:
      v23 = 1;
    }

    else
    {
      v23 = [v20 isEqualToString:v21];
    }

LABEL_38:

    v18 = *(a1[6] + 8);
    goto LABEL_39;
  }

  v23 = 0;
LABEL_39:
  *(v18 + 24) = v23;
  v24 = *(a1[6] + 8);
  v25 = *(v24 + 24) == 1 && llround(*(a1[4] + 48)) == llround(*(a1[5] + 48));
  *(v24 + 24) = v25;
  v26 = *(a1[6] + 8);
  if (*(v26 + 24) != 1)
  {
    v31 = 0;
    goto LABEL_51;
  }

  v27 = *(a1[5] + 56);
  v28 = *(a1[4] + 56);
  v29 = v27;
  v30 = v29;
  if (!(v28 | v29))
  {
    goto LABEL_49;
  }

  v31 = 0;
  if (!v28 || !v29)
  {
    goto LABEL_50;
  }

  if (v28 == v29)
  {
LABEL_49:
    v31 = 1;
  }

  else
  {
    v31 = [v28 isEqualToString:v29];
  }

LABEL_50:

  v26 = *(a1[6] + 8);
LABEL_51:
  *(v26 + 24) = v31;
  v32 = *(a1[6] + 8);
  v33 = *(v32 + 24) == 1 && *(a1[4] + 64) == *(a1[5] + 64);
  *(v32 + 24) = v33;
  v34 = *(a1[6] + 8);
  v35 = *(v34 + 24) == 1 && llroundf(*(a1[4] + 80) / 0.01) == llroundf(*(a1[5] + 80) / 0.01);
  *(v34 + 24) = v35;
  v36 = *(a1[6] + 8);
  if (*(v36 + 24) == 1)
  {
    v37 = *(a1[5] + 88);
    v38 = *(a1[4] + 88);
    v39 = v37;
    v40 = v39;
    if (!(v38 | v39))
    {
      goto LABEL_64;
    }

    v41 = 0;
    if (!v38 || !v39)
    {
      goto LABEL_65;
    }

    if (v38 == v39)
    {
LABEL_64:
      v41 = 1;
    }

    else
    {
      v41 = [v38 isEqualToString:v39];
    }

LABEL_65:

    v36 = *(a1[6] + 8);
    goto LABEL_66;
  }

  v41 = 0;
LABEL_66:
  *(v36 + 24) = v41;
}

- (unint64_t)hash
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__TLToneStoreDownload_hash__block_invoke;
  v5[3] = &unk_1E8578950;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __27__TLToneStoreDownload_hash__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) ^= *(*(a1 + 32) + 72);
  *(*(*(a1 + 40) + 8) + 24) ^= [*(*(a1 + 32) + 24) hash];
  *(*(*(a1 + 40) + 8) + 24) ^= [*(*(a1 + 32) + 32) hash];
  *(*(*(a1 + 40) + 8) + 24) ^= [*(*(a1 + 32) + 40) hash];
  *(*(*(a1 + 40) + 8) + 24) ^= llround(*(*(a1 + 32) + 48));
  *(*(*(a1 + 40) + 8) + 24) ^= [*(*(a1 + 32) + 56) hash];
  *(*(*(a1 + 40) + 8) + 24) ^= *(*(a1 + 32) + 64);
  *(*(*(a1 + 40) + 8) + 24) ^= llroundf(*(*(a1 + 32) + 80) / 0.01);
  result = [*(*(a1 + 32) + 88) hash];
  *(*(*(a1 + 40) + 8) + 24) ^= result;
  return result;
}

@end