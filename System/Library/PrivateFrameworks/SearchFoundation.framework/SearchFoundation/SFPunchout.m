@interface SFPunchout
+ (SFPunchout)punchoutWithURL:(id)a3;
+ (SFPunchout)punchoutWithURLs:(id)a3;
- (BOOL)canOpenURL:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (NSURL)preferredOpenableURL;
- (SFPunchout)initWithCoder:(id)a3;
- (SFPunchout)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPunchout

- (SFPunchout)initWithProtobuf:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = SFPunchout;
  v5 = [(SFPunchout *)&v33 init];
  if (v5)
  {
    v6 = [v4 name];

    if (v6)
    {
      v7 = [v4 name];
      [(SFPunchout *)v5 setName:v7];
    }

    v8 = [v4 bundleIdentifier];

    if (v8)
    {
      v9 = [v4 bundleIdentifier];
      [(SFPunchout *)v5 setBundleIdentifier:v9];
    }

    v10 = [v4 label];

    if (v10)
    {
      v11 = [v4 label];
      [(SFPunchout *)v5 setLabel:v11];
    }

    v12 = [v4 urls];
    if (v12)
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
    v14 = [v4 urls];
    v15 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = _SFPBURLHandwrittenTranslator(*(*(&v29 + 1) + 8 * i));
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v16);
    }

    [(SFPunchout *)v5 setUrls:v13];
    v20 = [v4 userActivityData];

    if (v20)
    {
      v21 = [SFUserActivityData alloc];
      v22 = [v4 userActivityData];
      v23 = [(SFUserActivityData *)v21 initWithProtobuf:v22];
      [(SFPunchout *)v5 setUserActivityData:v23];
    }

    v24 = [v4 actionTarget];

    if (v24)
    {
      v25 = [v4 actionTarget];
      [(SFPunchout *)v5 setActionTarget:v25];
    }

    if ([v4 isRunnableInBackground])
    {
      -[SFPunchout setIsRunnableInBackground:](v5, "setIsRunnableInBackground:", [v4 isRunnableInBackground]);
    }

    if ([v4 hasClip])
    {
      -[SFPunchout setHasClip:](v5, "setHasClip:", [v4 hasClip]);
    }

    if ([v4 forceOpenInBrowser])
    {
      -[SFPunchout setForceOpenInBrowser:](v5, "setForceOpenInBrowser:", [v4 forceOpenInBrowser]);
    }

    v26 = v5;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFPunchout *)self name];
  v4 = [v3 hash];
  v5 = [(SFPunchout *)self bundleIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFPunchout *)self label];
  v8 = [v7 hash];
  v9 = [(SFPunchout *)self urls];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(SFPunchout *)self userActivityData];
  v12 = [v11 hash];
  v13 = [(SFPunchout *)self actionTarget];
  v14 = v12 ^ [v13 hash];
  v15 = v10 ^ v14 ^ [(SFPunchout *)self isRunnableInBackground];
  v16 = [(SFPunchout *)self hasClip];
  v17 = v16 ^ [(SFPunchout *)self forceOpenInBrowser];

  return v15 ^ v17;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    if ([(SFPunchout *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFPunchout *)self name];
      v8 = [(SFPunchout *)v6 name];
      if ((v7 != 0) == (v8 == 0))
      {
        LOBYTE(v12) = 0;
LABEL_49:

        goto LABEL_50;
      }

      v9 = [(SFPunchout *)self name];
      if (v9)
      {
        v10 = [(SFPunchout *)self name];
        v11 = [(SFPunchout *)v6 name];
        if (![v10 isEqual:v11])
        {
          LOBYTE(v12) = 0;
          goto LABEL_47;
        }

        v67 = v11;
        v68 = v10;
      }

      v13 = [(SFPunchout *)self bundleIdentifier];
      v14 = [(SFPunchout *)v6 bundleIdentifier];
      if ((v13 != 0) != (v14 == 0))
      {
        v66 = v14;
        v15 = [(SFPunchout *)self bundleIdentifier];
        if (v15)
        {
          v16 = [(SFPunchout *)self bundleIdentifier];
          v17 = [(SFPunchout *)v6 bundleIdentifier];
          if (([v16 isEqual:v17] & 1) == 0)
          {

LABEL_44:
LABEL_45:
            LOBYTE(v12) = 0;
            goto LABEL_46;
          }

          v64 = v17;
          v65 = v13;
          v3 = v16;
          v18 = v15;
        }

        else
        {
          v65 = v13;
          v18 = 0;
        }

        v19 = [(SFPunchout *)self label];
        v20 = [(SFPunchout *)v6 label];
        v21 = v18;
        v22 = v3;
        if ((v19 != 0) != (v20 == 0))
        {
          v63 = v20;
          v62 = v19;
          v61 = [(SFPunchout *)self label];
          if (v61)
          {
            v23 = [(SFPunchout *)self label];
            v24 = [(SFPunchout *)v6 label];
            if (([v23 isEqual:v24] & 1) == 0)
            {

              if (v21)
              {
              }

              goto LABEL_45;
            }

            v59 = v24;
            v60 = v23;
            v25 = v21;
          }

          else
          {
            v25 = v21;
          }

          v26 = [(SFPunchout *)self urls];
          v27 = [(SFPunchout *)v6 urls];
          v21 = v25;
          v22 = v3;
          if ((v26 != 0) != (v27 == 0))
          {
            v58 = v27;
            v57 = [(SFPunchout *)self urls];
            if (v57)
            {
              v28 = [(SFPunchout *)self urls];
              [(SFPunchout *)v6 urls];
              v54 = v56 = v28;
              if (![v28 isEqual:?])
              {
                LOBYTE(v12) = 0;
                v34 = v57;
                goto LABEL_70;
              }

              v55 = v21;
            }

            else
            {
              v55 = v21;
            }

            v29 = [(SFPunchout *)self userActivityData];
            v30 = [(SFPunchout *)v6 userActivityData];
            if ((v29 != 0) != (v30 == 0))
            {
              v53 = v30;
              v31 = [(SFPunchout *)self userActivityData];
              v52 = v29;
              if (v31)
              {
                v32 = [(SFPunchout *)self userActivityData];
                v49 = [(SFPunchout *)v6 userActivityData];
                v50 = v32;
                if (![v32 isEqual:?])
                {
                  LOBYTE(v12) = 0;
                  v38 = v31;
                  v21 = v55;
LABEL_68:

LABEL_69:
                  v34 = v57;
                  if (!v57)
                  {
LABEL_71:

                    if (v61)
                    {
                    }

                    if (v21)
                    {
                    }

LABEL_46:
                    v11 = v67;
                    v10 = v68;
                    if (!v9)
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

                v51 = v31;
              }

              else
              {
                v51 = 0;
              }

              v35 = [(SFPunchout *)self actionTarget];
              v36 = [(SFPunchout *)v6 actionTarget];
              if ((v35 != 0) == (v36 == 0))
              {

                LOBYTE(v12) = 0;
                v21 = v55;
                goto LABEL_67;
              }

              v47 = v36;
              [(SFPunchout *)self actionTarget];
              v48 = v21 = v55;
              v46 = v35;
              if (!v48 || (-[SFPunchout actionTarget](self, "actionTarget"), v45 = objc_claimAutoreleasedReturnValue(), -[SFPunchout actionTarget](v6, "actionTarget"), v44 = objc_claimAutoreleasedReturnValue(), [v45 isEqual:?]))
              {
                v39 = [(SFPunchout *)self isRunnableInBackground];
                if (v39 == [(SFPunchout *)v6 isRunnableInBackground]&& (v40 = [(SFPunchout *)self hasClip], v40 == [(SFPunchout *)v6 hasClip]))
                {
                  v42 = [(SFPunchout *)self forceOpenInBrowser];
                  v12 = v42 ^ [(SFPunchout *)v6 forceOpenInBrowser]^ 1;
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

            if (v57)
            {
            }

            v21 = v55;
            v27 = v58;
          }

          if (v61)
          {
          }

          v19 = v62;
          v20 = v63;
        }

        if (v21)
        {
        }

        v13 = v65;
        v14 = v66;
      }

      goto LABEL_44;
    }

    LOBYTE(v12) = 0;
  }

LABEL_50:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFPunchout *)self name];
  v6 = [v5 copy];
  [v4 setName:v6];

  v7 = [(SFPunchout *)self bundleIdentifier];
  v8 = [v7 copy];
  [v4 setBundleIdentifier:v8];

  v9 = [(SFPunchout *)self label];
  v10 = [v9 copy];
  [v4 setLabel:v10];

  v11 = [(SFPunchout *)self urls];
  v12 = [v11 copy];
  [v4 setUrls:v12];

  v13 = [(SFPunchout *)self userActivityData];
  v14 = [v13 copy];
  [v4 setUserActivityData:v14];

  v15 = [(SFPunchout *)self actionTarget];
  v16 = [v15 copy];
  [v4 setActionTarget:v16];

  [v4 setIsRunnableInBackground:{-[SFPunchout isRunnableInBackground](self, "isRunnableInBackground")}];
  [v4 setHasClip:{-[SFPunchout hasClip](self, "hasClip")}];
  [v4 setForceOpenInBrowser:{-[SFPunchout forceOpenInBrowser](self, "forceOpenInBrowser")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPunchout alloc] initWithFacade:self];
  v3 = [(_SFPBPunchout *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPunchout alloc] initWithFacade:self];
  v3 = [(_SFPBPunchout *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBPunchout alloc] initWithFacade:self];
  v5 = [(_SFPBPunchout *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFPunchout)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPunchout alloc] initWithData:v5];
  v7 = [(SFPunchout *)self initWithProtobuf:v6];

  return v7;
}

- (BOOL)canOpenURL:(id)a3
{
  v3 = MEMORY[0x1E6963608];
  v4 = a3;
  v5 = [v3 defaultWorkspace];
  v6 = [v5 isApplicationAvailableToOpenURL:v4 error:0];

  return v6;
}

- (NSURL)preferredOpenableURL
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(SFPunchout *)v2 cachedOpenableURL];

  if (!v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(SFPunchout *)v2 urls];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          if ([(SFPunchout *)v2 canOpenURL:v9])
          {
            [(SFPunchout *)v2 setCachedOpenableURL:v9];
            v4 = v9;

            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v10 = [(SFPunchout *)v2 urls];
    v11 = [v10 firstObject];
    [(SFPunchout *)v2 setCachedOpenableURL:v11];
  }

  v4 = [(SFPunchout *)v2 cachedOpenableURL];
LABEL_13:
  objc_sync_exit(v2);

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (SFPunchout)punchoutWithURLs:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SFPunchout);
  [(SFPunchout *)v4 setUrls:v3];

  return v4;
}

+ (SFPunchout)punchoutWithURL:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = a3;
    v3 = MEMORY[0x1E695DEC8];
    v4 = a3;
    v5 = [v3 arrayWithObjects:&v9 count:1];
    v6 = [SFPunchout punchoutWithURLs:v5, v9, v10];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end