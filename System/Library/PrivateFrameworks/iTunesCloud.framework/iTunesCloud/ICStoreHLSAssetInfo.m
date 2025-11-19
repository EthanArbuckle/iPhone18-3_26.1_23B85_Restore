@interface ICStoreHLSAssetInfo
- (BOOL)isiTunesStoreStream;
- (ICStoreHLSAssetInfo)initWithItemResponseDictionary:(id)a3;
- (NSSet)audioTraits;
- (NSString)keyServerProtocolType;
- (NSURL)alternateKeyCertificateURL;
- (NSURL)alternateKeyServerURL;
- (NSURL)alternatePlaylistURL;
- (NSURL)keyCertificateURL;
- (NSURL)keyServerURL;
@end

@implementation ICStoreHLSAssetInfo

- (NSString)keyServerProtocolType
{
  keyServerProtocolType = self->_keyServerProtocolType;
  if (keyServerProtocolType)
  {
    v3 = keyServerProtocolType;
  }

  else
  {
    v3 = [(NSDictionary *)self->_itemResponseDictionary ic_stringValueForKey:@"key-server-protocol-type"];
  }

  return v3;
}

- (NSSet)audioTraits
{
  itemResponseDictionary = self->_itemResponseDictionary;
  if (itemResponseDictionary)
  {
    v3 = [(NSDictionary *)itemResponseDictionary objectForKey:@"audioTraits"];
    if (_NSIsNSString() && [v3 length])
    {
      v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"[]"];
      v5 = [v3 stringByTrimmingCharactersInSet:v4];

      v6 = [v5 componentsSeparatedByString:{@", "}];
      v7 = [v6 msv_map:&__block_literal_global_26064];

      v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    }

    else if (_NSIsNSArray() && [v3 count])
    {
      v8 = [MEMORY[0x1E695DFD8] setWithArray:v3];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __34__ICStoreHLSAssetInfo_audioTraits__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AB08];
  v3 = a2;
  v4 = [v2 whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

- (NSURL)alternateKeyServerURL
{
  itemResponseDictionary = self->_itemResponseDictionary;
  if (itemResponseDictionary)
  {
    v3 = [(NSDictionary *)itemResponseDictionary objectForKey:@"mp-hls-key-server-url"];
    if (_NSIsNSString() && [v3 length])
    {
      v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)alternateKeyCertificateURL
{
  itemResponseDictionary = self->_itemResponseDictionary;
  if (itemResponseDictionary)
  {
    v3 = [(NSDictionary *)itemResponseDictionary objectForKey:@"mp-hls-key-cert-url"];
    if (_NSIsNSString() && [v3 length])
    {
      v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)alternatePlaylistURL
{
  itemResponseDictionary = self->_itemResponseDictionary;
  if (itemResponseDictionary)
  {
    v3 = [(NSDictionary *)itemResponseDictionary objectForKey:@"mp-hls-playlist-url"];
    if (_NSIsNSString() && [v3 length])
    {
      v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isiTunesStoreStream
{
  itemResponseDictionary = self->_itemResponseDictionary;
  if (itemResponseDictionary)
  {
    v4 = [(NSDictionary *)itemResponseDictionary objectForKey:@"is-itunes-stream"];
    if (objc_opt_respondsToSelector())
    {
      isiTunesStoreStream = [v4 BOOLValue];
    }

    else
    {
      isiTunesStoreStream = 1;
    }
  }

  else
  {
    isiTunesStoreStream = self->_isiTunesStoreStream;
  }

  return isiTunesStoreStream & 1;
}

- (NSURL)keyServerURL
{
  keyServerURL = self->_keyServerURL;
  if (keyServerURL)
  {
    v3 = keyServerURL;
    goto LABEL_9;
  }

  itemResponseDictionary = self->_itemResponseDictionary;
  if (itemResponseDictionary)
  {
    v5 = [(NSDictionary *)itemResponseDictionary objectForKey:@"hls-key-server-url"];
    if (_NSIsNSString() && [v5 length])
    {
      v3 = [MEMORY[0x1E695DFF8] URLWithString:v5];

      goto LABEL_9;
    }
  }

  v3 = 0;
LABEL_9:

  return v3;
}

- (NSURL)keyCertificateURL
{
  keyCertificateURL = self->_keyCertificateURL;
  if (keyCertificateURL)
  {
    v3 = keyCertificateURL;
    goto LABEL_9;
  }

  itemResponseDictionary = self->_itemResponseDictionary;
  if (itemResponseDictionary)
  {
    v5 = [(NSDictionary *)itemResponseDictionary objectForKey:@"hls-key-cert-url"];
    if (_NSIsNSString() && [v5 length])
    {
      v3 = [MEMORY[0x1E695DFF8] URLWithString:v5];

      goto LABEL_9;
    }
  }

  v3 = 0;
LABEL_9:

  return v3;
}

- (ICStoreHLSAssetInfo)initWithItemResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"hls-playlist-url"];
  if (_NSIsNSString() && [v5 length])
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    if (v6)
    {
      v7 = [(ICStoreHLSAssetInfo *)self init];
      v8 = v7;
      if (v7)
      {
        objc_storeStrong(&v7->_playlistURL, v6);
        v9 = [v4 copy];
        itemResponseDictionary = v8->_itemResponseDictionary;
        v8->_itemResponseDictionary = v9;
      }

      self = v8;
      v11 = self;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end