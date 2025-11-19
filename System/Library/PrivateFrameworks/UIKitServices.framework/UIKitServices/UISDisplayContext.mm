@interface UISDisplayContext
+ (id)defaultContext;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (UISDisplayContext)initWithDisplayConfiguration:(id)a3 displayEdgeInfo:(id)a4 exclusionArea:(id)a5;
- (UISDisplayContext)initWithXPCDictionary:(id)a3;
- (id)_initWithDisplayContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation UISDisplayContext

+ (id)defaultContext
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v3 = _MergedGlobals_16;
  v13 = _MergedGlobals_16;
  if (!_MergedGlobals_16)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getCADisplayClass_block_invoke;
    v9[3] = &unk_1E7459080;
    v9[4] = &v10;
    __getCADisplayClass_block_invoke(v9);
    v3 = v11[3];
  }

  v4 = v3;
  _Block_object_dispose(&v10, 8);
  v5 = [v3 mainDisplay];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E699FAC0]) initWithCADisplay:v5];
    if (v6)
    {
      v7 = [[a1 alloc] initWithDisplayConfiguration:v6];
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (UISDisplayContext)initWithDisplayConfiguration:(id)a3 displayEdgeInfo:(id)a4 exclusionArea:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = UISDisplayContext;
  v11 = [(UISDisplayContext *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    displayConfiguration = v11->_displayConfiguration;
    v11->_displayConfiguration = v12;

    v14 = [v9 copy];
    displayEdgeInfo = v11->_displayEdgeInfo;
    v11->_displayEdgeInfo = v14;

    v11->_artworkSubtype = 0;
    v11->_userInterfaceStyle = 0;
    v16 = [v10 copy];
    exclusionArea = v11->_exclusionArea;
    v11->_exclusionArea = v16;
  }

  return v11;
}

- (id)_initWithDisplayContext:(id)a3
{
  v4 = a3;
  v5 = [v4 displayConfiguration];
  v6 = [v4 displayEdgeInfo];
  v7 = [v4 exclusionArea];
  v8 = [(UISDisplayContext *)self initWithDisplayConfiguration:v5 displayEdgeInfo:v6 exclusionArea:v7];

  if (v8)
  {
    v8->_artworkSubtype = [v4 artworkSubtype];
    v8->_userInterfaceStyle = [v4 userInterfaceStyle];
  }

  return v8;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  xpc_dictionary_set_uint64(xdict, "ArtworkSubtype", self->_artworkSubtype);
  xpc_dictionary_set_uint64(xdict, "UserInterfaceStyle", self->_userInterfaceStyle);
  BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
}

- (UISDisplayContext)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UISDisplayContext;
  v5 = [(UISDisplayContext *)&v13 init];
  if (v5)
  {
    v6 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    displayConfiguration = v5->_displayConfiguration;
    v5->_displayConfiguration = v6;

    v8 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    displayEdgeInfo = v5->_displayEdgeInfo;
    v5->_displayEdgeInfo = v8;

    v5->_artworkSubtype = xpc_dictionary_get_uint64(v4, "ArtworkSubtype");
    v5->_userInterfaceStyle = xpc_dictionary_get_uint64(v4, "UserInterfaceStyle");
    v10 = BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey();
    exclusionArea = v5->_exclusionArea;
    v5->_exclusionArea = v10;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [UISMutableDisplayContext alloc];

  return [(UISDisplayContext *)v4 _initWithDisplayContext:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  if (v4 == self)
  {
    v17 = 1;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(UISDisplayContext *)self displayConfiguration];
    v8 = [(UISDisplayContext *)v6 displayConfiguration];
    if ([v7 isEqual:v8])
    {
      v9 = [(UISDisplayContext *)self displayEdgeInfo];
      v10 = [(UISDisplayContext *)v6 displayEdgeInfo];
      if ([v9 isEqual:v10] && (v11 = -[UISDisplayContext artworkSubtype](self, "artworkSubtype"), v11 == -[UISDisplayContext artworkSubtype](v6, "artworkSubtype")) && (v12 = -[UISDisplayContext userInterfaceStyle](self, "userInterfaceStyle"), v12 == -[UISDisplayContext userInterfaceStyle](v6, "userInterfaceStyle")))
      {
        v13 = [(UISDisplayContext *)self exclusionArea];
        v14 = [(UISDisplayContext *)v6 exclusionArea];
        if (v13 == v14)
        {
          v17 = 1;
        }

        else
        {
          v15 = [(UISDisplayContext *)self exclusionArea];
          [(UISDisplayContext *)v6 exclusionArea];
          v16 = v19 = v13;
          v17 = [v15 isEqual:v16];

          v13 = v19;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
LABEL_10:
    v17 = 0;
  }

LABEL_16:

  return v17;
}

- (unint64_t)hash
{
  v3 = [(UISDisplayContext *)self displayConfiguration];
  v4 = [v3 hash];
  v5 = [(UISDisplayContext *)self displayEdgeInfo];
  v6 = [v5 hash] ^ v4;
  v7 = [(UISDisplayContext *)self artworkSubtype];
  v8 = v7 ^ [(UISDisplayContext *)self userInterfaceStyle];
  v9 = [(UISDisplayContext *)self exclusionArea];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_displayConfiguration withName:@"DisplayConfiguration"];
  v5 = [v3 appendObject:self->_displayEdgeInfo withName:@"DisplayEdgeInfo"];
  v6 = [v3 appendUnsignedInteger:self->_artworkSubtype withName:@"ArtworkSubtype"];
  v7 = [v3 appendUnsignedInteger:self->_userInterfaceStyle withName:@"UserInterfaceStyle"];
  v8 = [v3 appendObject:self->_exclusionArea withName:@"ExclusionArea"];
  v9 = [v3 build];

  return v9;
}

@end