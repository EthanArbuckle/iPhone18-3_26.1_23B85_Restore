@interface SSPreorder
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SSPreorder)initWithXPCEncoding:(id)a3;
- (id)_initWithPersistentIdentifier:(int64_t)a3;
- (id)copyReleaseDateStringWithStyle:(int64_t)a3;
- (id)copyXPCEncoding;
- (void)_setArtistName:(id)a3;
- (void)_setImageCollection:(id)a3;
- (void)_setItemKind:(id)a3;
- (void)_setReleaseDateString:(id)a3;
- (void)_setStoreAccountIdentifier:(id)a3;
- (void)_setTitle:(id)a3;
- (void)dealloc;
@end

@implementation SSPreorder

- (id)_initWithPersistentIdentifier:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SSPreorder;
  result = [(SSPreorder *)&v5 init];
  if (result)
  {
    *(result + 8) = a3;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSPreorder;
  [(SSPreorder *)&v3 dealloc];
}

- (id)copyReleaseDateStringWithStyle:(int64_t)a3
{
  StringWithDate = [(SSPreorder *)self releaseDateString];
  if (!StringWithDate)
  {
    v6 = CFLocaleCopyCurrent();
    if (v6)
    {
      v7 = v6;
      v8 = CFDateFormatterCreate(0, v6, a3, kCFDateFormatterNoStyle);
      if (v8)
      {
        v9 = v8;
        StringWithDate = CFDateFormatterCreateStringWithDate(0, v8, [(SSPreorder *)self releaseDate]);
        CFRelease(v9);
      }

      else
      {
        StringWithDate = 0;
      }

      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return StringWithDate;
}

- (void)_setArtistName:(id)a3
{
  artistName = self->_artistName;
  if (artistName != a3)
  {

    self->_artistName = [a3 copy];
  }
}

- (void)_setImageCollection:(id)a3
{
  imageCollection = self->_imageCollection;
  if (imageCollection != a3)
  {

    self->_imageCollection = [a3 copy];
  }
}

- (void)_setItemKind:(id)a3
{
  itemKind = self->_itemKind;
  if (itemKind != a3)
  {

    self->_itemKind = [a3 copy];
  }
}

- (void)_setReleaseDateString:(id)a3
{
  releaseDateString = self->_releaseDateString;
  if (releaseDateString != a3)
  {

    self->_releaseDateString = [a3 copy];
  }
}

- (void)_setStoreAccountIdentifier:(id)a3
{
  accountID = self->_accountID;
  if (accountID != a3)
  {

    self->_accountID = a3;
  }
}

- (void)_setTitle:(id)a3
{
  title = self->_title;
  if (title != a3)
  {

    self->_title = [a3 copy];
  }
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = SSPreorder;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: (%lld, %@)", -[SSPreorder description](&v3, sel_description), self->_pid, self->_title];
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  v7 = [(SSPreorder *)self persistentIdentifier];
  return v7 == [a3 persistentIdentifier];
}

- (SSPreorder)initWithXPCEncoding:(id)a3
{
  if (a3 && MEMORY[0x1DA6E0380](a3, a2) == MEMORY[0x1E69E9E80])
  {
    v8.receiver = self;
    v8.super_class = SSPreorder;
    v5 = [(SSPreorder *)&v8 init];
    if (v5)
    {
      v5->_artistName = SSXPCDictionaryCopyCFObject(a3, "0");
      v5->_itemKind = SSXPCDictionaryCopyCFObject(a3, "2");
      v5->_pid = xpc_dictionary_get_int64(a3, "3");
      v5->_releaseDate = xpc_dictionary_get_double(a3, "4");
      v5->_releaseDateString = SSXPCDictionaryCopyCFObject(a3, "5");
      v5->_accountID = SSXPCDictionaryCopyCFObject(a3, "6");
      v5->_itemID = xpc_dictionary_get_int64(a3, "7");
      v5->_preorderID = xpc_dictionary_get_int64(a3, "8");
      v5->_title = SSXPCDictionaryCopyCFObject(a3, "9");
      value = xpc_dictionary_get_value(a3, "1");
      if (value)
      {
        v5->_imageCollection = [[SSItemImageCollection alloc] initWithXPCEncoding:value];
      }
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetCFObject(v3, "0", self->_artistName);
  SSXPCDictionarySetCFObject(v3, "2", self->_itemKind);
  xpc_dictionary_set_int64(v3, "3", self->_pid);
  xpc_dictionary_set_double(v3, "4", self->_releaseDate);
  SSXPCDictionarySetCFObject(v3, "5", self->_releaseDateString);
  SSXPCDictionarySetCFObject(v3, "6", self->_accountID);
  xpc_dictionary_set_int64(v3, "7", self->_itemID);
  xpc_dictionary_set_int64(v3, "8", self->_preorderID);
  SSXPCDictionarySetCFObject(v3, "9", self->_title);
  v4 = [(SSItemImageCollection *)self->_imageCollection copyXPCEncoding];
  if (v4)
  {
    v5 = v4;
    xpc_dictionary_set_value(v3, "1", v4);
    xpc_release(v5);
  }

  return v3;
}

@end