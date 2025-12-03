@interface SSPreorder
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SSPreorder)initWithXPCEncoding:(id)encoding;
- (id)_initWithPersistentIdentifier:(int64_t)identifier;
- (id)copyReleaseDateStringWithStyle:(int64_t)style;
- (id)copyXPCEncoding;
- (void)_setArtistName:(id)name;
- (void)_setImageCollection:(id)collection;
- (void)_setItemKind:(id)kind;
- (void)_setReleaseDateString:(id)string;
- (void)_setStoreAccountIdentifier:(id)identifier;
- (void)_setTitle:(id)title;
- (void)dealloc;
@end

@implementation SSPreorder

- (id)_initWithPersistentIdentifier:(int64_t)identifier
{
  v5.receiver = self;
  v5.super_class = SSPreorder;
  result = [(SSPreorder *)&v5 init];
  if (result)
  {
    *(result + 8) = identifier;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSPreorder;
  [(SSPreorder *)&v3 dealloc];
}

- (id)copyReleaseDateStringWithStyle:(int64_t)style
{
  StringWithDate = [(SSPreorder *)self releaseDateString];
  if (!StringWithDate)
  {
    v6 = CFLocaleCopyCurrent();
    if (v6)
    {
      v7 = v6;
      v8 = CFDateFormatterCreate(0, v6, style, kCFDateFormatterNoStyle);
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

- (void)_setArtistName:(id)name
{
  artistName = self->_artistName;
  if (artistName != name)
  {

    self->_artistName = [name copy];
  }
}

- (void)_setImageCollection:(id)collection
{
  imageCollection = self->_imageCollection;
  if (imageCollection != collection)
  {

    self->_imageCollection = [collection copy];
  }
}

- (void)_setItemKind:(id)kind
{
  itemKind = self->_itemKind;
  if (itemKind != kind)
  {

    self->_itemKind = [kind copy];
  }
}

- (void)_setReleaseDateString:(id)string
{
  releaseDateString = self->_releaseDateString;
  if (releaseDateString != string)
  {

    self->_releaseDateString = [string copy];
  }
}

- (void)_setStoreAccountIdentifier:(id)identifier
{
  accountID = self->_accountID;
  if (accountID != identifier)
  {

    self->_accountID = identifier;
  }
}

- (void)_setTitle:(id)title
{
  title = self->_title;
  if (title != title)
  {

    self->_title = [title copy];
  }
}

- (NSString)description
{
  v3.receiver = self;
  v3.super_class = SSPreorder;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: (%lld, %@)", -[SSPreorder description](&v3, sel_description), self->_pid, self->_title];
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  persistentIdentifier = [(SSPreorder *)self persistentIdentifier];
  return persistentIdentifier == [equal persistentIdentifier];
}

- (SSPreorder)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v8.receiver = self;
    v8.super_class = SSPreorder;
    v5 = [(SSPreorder *)&v8 init];
    if (v5)
    {
      v5->_artistName = SSXPCDictionaryCopyCFObject(encoding, "0");
      v5->_itemKind = SSXPCDictionaryCopyCFObject(encoding, "2");
      v5->_pid = xpc_dictionary_get_int64(encoding, "3");
      v5->_releaseDate = xpc_dictionary_get_double(encoding, "4");
      v5->_releaseDateString = SSXPCDictionaryCopyCFObject(encoding, "5");
      v5->_accountID = SSXPCDictionaryCopyCFObject(encoding, "6");
      v5->_itemID = xpc_dictionary_get_int64(encoding, "7");
      v5->_preorderID = xpc_dictionary_get_int64(encoding, "8");
      v5->_title = SSXPCDictionaryCopyCFObject(encoding, "9");
      value = xpc_dictionary_get_value(encoding, "1");
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
  copyXPCEncoding = [(SSItemImageCollection *)self->_imageCollection copyXPCEncoding];
  if (copyXPCEncoding)
  {
    v5 = copyXPCEncoding;
    xpc_dictionary_set_value(v3, "1", copyXPCEncoding);
    xpc_release(v5);
  }

  return v3;
}

@end