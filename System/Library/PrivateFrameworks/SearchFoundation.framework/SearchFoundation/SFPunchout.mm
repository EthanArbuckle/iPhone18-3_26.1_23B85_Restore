@interface SFPunchout
+ (SFPunchout)punchoutWithURL:(id)l;
+ (SFPunchout)punchoutWithURLs:(id)ls;
- (BOOL)canOpenURL:(id)l;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (NSURL)preferredOpenableURL;
- (SFPunchout)initWithCoder:(id)coder;
- (SFPunchout)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPunchout

- (SFPunchout)initWithProtobuf:(id)protobuf
{
  v35 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v33.receiver = self;
  v33.super_class = SFPunchout;
  v5 = [(SFPunchout *)&v33 init];
  if (v5)
  {
    name = [protobufCopy name];

    if (name)
    {
      name2 = [protobufCopy name];
      [(SFPunchout *)v5 setName:name2];
    }

    bundleIdentifier = [protobufCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [protobufCopy bundleIdentifier];
      [(SFPunchout *)v5 setBundleIdentifier:bundleIdentifier2];
    }

    label = [protobufCopy label];

    if (label)
    {
      label2 = [protobufCopy label];
      [(SFPunchout *)v5 setLabel:label2];
    }

    urls = [protobufCopy urls];
    if (urls)
    {
      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v13 = 0;
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    urls2 = [protobufCopy urls];
    v15 = [urls2 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(urls2);
          }

          v19 = _SFPBURLHandwrittenTranslator(*(*(&v29 + 1) + 8 * i));
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [urls2 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v16);
    }

    [(SFPunchout *)v5 setUrls:v13];
    userActivityData = [protobufCopy userActivityData];

    if (userActivityData)
    {
      v21 = [SFUserActivityData alloc];
      userActivityData2 = [protobufCopy userActivityData];
      v23 = [(SFUserActivityData *)v21 initWithProtobuf:userActivityData2];
      [(SFPunchout *)v5 setUserActivityData:v23];
    }

    actionTarget = [protobufCopy actionTarget];

    if (actionTarget)
    {
      actionTarget2 = [protobufCopy actionTarget];
      [(SFPunchout *)v5 setActionTarget:actionTarget2];
    }

    if ([protobufCopy isRunnableInBackground])
    {
      -[SFPunchout setIsRunnableInBackground:](v5, "setIsRunnableInBackground:", [protobufCopy isRunnableInBackground]);
    }

    if ([protobufCopy hasClip])
    {
      -[SFPunchout setHasClip:](v5, "setHasClip:", [protobufCopy hasClip]);
    }

    if ([protobufCopy forceOpenInBrowser])
    {
      -[SFPunchout setForceOpenInBrowser:](v5, "setForceOpenInBrowser:", [protobufCopy forceOpenInBrowser]);
    }

    v26 = v5;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  name = [(SFPunchout *)self name];
  v4 = [name hash];
  bundleIdentifier = [(SFPunchout *)self bundleIdentifier];
  v6 = [bundleIdentifier hash] ^ v4;
  label = [(SFPunchout *)self label];
  v8 = [label hash];
  urls = [(SFPunchout *)self urls];
  v10 = v6 ^ v8 ^ [urls hash];
  userActivityData = [(SFPunchout *)self userActivityData];
  v12 = [userActivityData hash];
  actionTarget = [(SFPunchout *)self actionTarget];
  v14 = v12 ^ [actionTarget hash];
  v15 = v10 ^ v14 ^ [(SFPunchout *)self isRunnableInBackground];
  hasClip = [(SFPunchout *)self hasClip];
  v17 = hasClip ^ [(SFPunchout *)self forceOpenInBrowser];

  return v15 ^ v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if ([(SFPunchout *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      name = [(SFPunchout *)self name];
      name2 = [(SFPunchout *)v6 name];
      if ((name != 0) == (name2 == 0))
      {
        LOBYTE(v12) = 0;
LABEL_49:

        goto LABEL_50;
      }

      name3 = [(SFPunchout *)self name];
      if (name3)
      {
        name4 = [(SFPunchout *)self name];
        name5 = [(SFPunchout *)v6 name];
        if (![name4 isEqual:name5])
        {
          LOBYTE(v12) = 0;
          goto LABEL_47;
        }

        v67 = name5;
        v68 = name4;
      }

      bundleIdentifier = [(SFPunchout *)self bundleIdentifier];
      bundleIdentifier2 = [(SFPunchout *)v6 bundleIdentifier];
      if ((bundleIdentifier != 0) != (bundleIdentifier2 == 0))
      {
        v66 = bundleIdentifier2;
        bundleIdentifier3 = [(SFPunchout *)self bundleIdentifier];
        if (bundleIdentifier3)
        {
          bundleIdentifier4 = [(SFPunchout *)self bundleIdentifier];
          bundleIdentifier5 = [(SFPunchout *)v6 bundleIdentifier];
          if (([bundleIdentifier4 isEqual:bundleIdentifier5] & 1) == 0)
          {

LABEL_44:
LABEL_45:
            LOBYTE(v12) = 0;
            goto LABEL_46;
          }

          v64 = bundleIdentifier5;
          v65 = bundleIdentifier;
          v3 = bundleIdentifier4;
          v18 = bundleIdentifier3;
        }

        else
        {
          v65 = bundleIdentifier;
          v18 = 0;
        }

        label = [(SFPunchout *)self label];
        label2 = [(SFPunchout *)v6 label];
        v21 = v18;
        v22 = v3;
        if ((label != 0) != (label2 == 0))
        {
          v63 = label2;
          v62 = label;
          label3 = [(SFPunchout *)self label];
          if (label3)
          {
            label4 = [(SFPunchout *)self label];
            label5 = [(SFPunchout *)v6 label];
            if (([label4 isEqual:label5] & 1) == 0)
            {

              if (v21)
              {
              }

              goto LABEL_45;
            }

            v59 = label5;
            v60 = label4;
            v25 = v21;
          }

          else
          {
            v25 = v21;
          }

          urls = [(SFPunchout *)self urls];
          urls2 = [(SFPunchout *)v6 urls];
          v21 = v25;
          v22 = v3;
          if ((urls != 0) != (urls2 == 0))
          {
            v58 = urls2;
            urls3 = [(SFPunchout *)self urls];
            if (urls3)
            {
              urls4 = [(SFPunchout *)self urls];
              [(SFPunchout *)v6 urls];
              v54 = v56 = urls4;
              if (![urls4 isEqual:?])
              {
                LOBYTE(v12) = 0;
                v34 = urls3;
                goto LABEL_70;
              }

              v55 = v21;
            }

            else
            {
              v55 = v21;
            }

            userActivityData = [(SFPunchout *)self userActivityData];
            userActivityData2 = [(SFPunchout *)v6 userActivityData];
            if ((userActivityData != 0) != (userActivityData2 == 0))
            {
              v53 = userActivityData2;
              userActivityData3 = [(SFPunchout *)self userActivityData];
              v52 = userActivityData;
              if (userActivityData3)
              {
                userActivityData4 = [(SFPunchout *)self userActivityData];
                userActivityData5 = [(SFPunchout *)v6 userActivityData];
                v50 = userActivityData4;
                if (![userActivityData4 isEqual:?])
                {
                  LOBYTE(v12) = 0;
                  v38 = userActivityData3;
                  v21 = v55;
LABEL_68:

LABEL_69:
                  v34 = urls3;
                  if (!urls3)
                  {
LABEL_71:

                    if (label3)
                    {
                    }

                    if (v21)
                    {
                    }

LABEL_46:
                    name5 = v67;
                    name4 = v68;
                    if (!name3)
                    {
LABEL_48:

                      goto LABEL_49;
                    }

LABEL_47:

                    goto LABEL_48;
                  }

LABEL_70:

                  goto LABEL_71;
                }

                v51 = userActivityData3;
              }

              else
              {
                v51 = 0;
              }

              actionTarget = [(SFPunchout *)self actionTarget];
              actionTarget2 = [(SFPunchout *)v6 actionTarget];
              if ((actionTarget != 0) == (actionTarget2 == 0))
              {

                LOBYTE(v12) = 0;
                v21 = v55;
                goto LABEL_67;
              }

              v47 = actionTarget2;
              [(SFPunchout *)self actionTarget];
              v48 = v21 = v55;
              v46 = actionTarget;
              if (!v48 || (-[SFPunchout actionTarget](self, "actionTarget"), v45 = objc_claimAutoreleasedReturnValue(), -[SFPunchout actionTarget](v6, "actionTarget"), v44 = objc_claimAutoreleasedReturnValue(), [v45 isEqual:?]))
              {
                isRunnableInBackground = [(SFPunchout *)self isRunnableInBackground];
                if (isRunnableInBackground == [(SFPunchout *)v6 isRunnableInBackground]&& (v40 = [(SFPunchout *)self hasClip], v40 == [(SFPunchout *)v6 hasClip]))
                {
                  forceOpenInBrowser = [(SFPunchout *)self forceOpenInBrowser];
                  v12 = forceOpenInBrowser ^ [(SFPunchout *)v6 forceOpenInBrowser]^ 1;
                  v41 = v12;
                }

                else
                {
                  LOBYTE(v12) = 0;
                  v41 = 0;
                }

                v37 = v48;
                if (!v48)
                {
                  v43 = v47;
                  LOBYTE(v12) = v41;
                  goto LABEL_66;
                }
              }

              else
              {
                LOBYTE(v12) = 0;
                v37 = v48;
              }

              v43 = v47;
LABEL_66:

LABEL_67:
              v38 = v51;
              if (!v51)
              {
                goto LABEL_69;
              }

              goto LABEL_68;
            }

            if (urls3)
            {
            }

            v21 = v55;
            urls2 = v58;
          }

          if (label3)
          {
          }

          label = v62;
          label2 = v63;
        }

        if (v21)
        {
        }

        bundleIdentifier = v65;
        bundleIdentifier2 = v66;
      }

      goto LABEL_44;
    }

    LOBYTE(v12) = 0;
  }

LABEL_50:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  name = [(SFPunchout *)self name];
  v6 = [name copy];
  [v4 setName:v6];

  bundleIdentifier = [(SFPunchout *)self bundleIdentifier];
  v8 = [bundleIdentifier copy];
  [v4 setBundleIdentifier:v8];

  label = [(SFPunchout *)self label];
  v10 = [label copy];
  [v4 setLabel:v10];

  urls = [(SFPunchout *)self urls];
  v12 = [urls copy];
  [v4 setUrls:v12];

  userActivityData = [(SFPunchout *)self userActivityData];
  v14 = [userActivityData copy];
  [v4 setUserActivityData:v14];

  actionTarget = [(SFPunchout *)self actionTarget];
  v16 = [actionTarget copy];
  [v4 setActionTarget:v16];

  [v4 setIsRunnableInBackground:{-[SFPunchout isRunnableInBackground](self, "isRunnableInBackground")}];
  [v4 setHasClip:{-[SFPunchout hasClip](self, "hasClip")}];
  [v4 setForceOpenInBrowser:{-[SFPunchout forceOpenInBrowser](self, "forceOpenInBrowser")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPunchout alloc] initWithFacade:self];
  jsonData = [(_SFPBPunchout *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPunchout alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPunchout *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBPunchout alloc] initWithFacade:self];
  data = [(_SFPBPunchout *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFPunchout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPunchout alloc] initWithData:v5];
  v7 = [(SFPunchout *)self initWithProtobuf:v6];

  return v7;
}

- (BOOL)canOpenURL:(id)l
{
  v3 = MEMORY[0x1E6963608];
  lCopy = l;
  defaultWorkspace = [v3 defaultWorkspace];
  v6 = [defaultWorkspace isApplicationAvailableToOpenURL:lCopy error:0];

  return v6;
}

- (NSURL)preferredOpenableURL
{
  v19 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedOpenableURL = [(SFPunchout *)selfCopy cachedOpenableURL];

  if (!cachedOpenableURL)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    urls = [(SFPunchout *)selfCopy urls];
    v6 = [urls countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(urls);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([(SFPunchout *)selfCopy canOpenURL:v9])
          {
            [(SFPunchout *)selfCopy setCachedOpenableURL:v9];
            cachedOpenableURL2 = v9;

            goto LABEL_13;
          }
        }

        v6 = [urls countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    urls2 = [(SFPunchout *)selfCopy urls];
    firstObject = [urls2 firstObject];
    [(SFPunchout *)selfCopy setCachedOpenableURL:firstObject];
  }

  cachedOpenableURL2 = [(SFPunchout *)selfCopy cachedOpenableURL];
LABEL_13:
  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x1E69E9840];

  return cachedOpenableURL2;
}

+ (SFPunchout)punchoutWithURLs:(id)ls
{
  lsCopy = ls;
  v4 = objc_alloc_init(SFPunchout);
  [(SFPunchout *)v4 setUrls:lsCopy];

  return v4;
}

+ (SFPunchout)punchoutWithURL:(id)l
{
  v10 = *MEMORY[0x1E69E9840];
  if (l)
  {
    lCopy = l;
    v3 = MEMORY[0x1E695DEC8];
    lCopy2 = l;
    v5 = [v3 arrayWithObjects:&lCopy count:1];
    v6 = [SFPunchout punchoutWithURLs:v5, lCopy, v10];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end