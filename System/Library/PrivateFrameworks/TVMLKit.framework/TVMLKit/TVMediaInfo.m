@interface TVMediaInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TVMediaInfo

- (unint64_t)hash
{
  v3 = [(TVMediaInfo *)self playlist];
  v4 = [v3 hash];

  v5 = [(TVMediaInfo *)self overlayView];
  v6 = [v5 hash] ^ v4;

  v7 = [(TVMediaInfo *)self imageProxies];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (v8 == self)
  {
    v12 = 1;
  }

  else
  {
    v9 = [(TVMediaInfo *)self intent];
    if (v9 == [(TVMediaInfo *)v8 intent])
    {
      v10 = [(TVMediaInfo *)self playlist];
      v11 = [(TVMediaInfo *)v8 playlist];
      if (v10 != v11)
      {
        v3 = [(TVMediaInfo *)self playlist];
        v4 = [(TVMediaInfo *)v8 playlist];
        if (![v3 isEqual:v4])
        {
          v12 = 0;
          goto LABEL_26;
        }
      }

      v13 = [(TVMediaInfo *)self overlayView];
      v14 = [(TVMediaInfo *)v8 overlayView];
      v15 = v14;
      if (v13 != v14)
      {

        v12 = 0;
        goto LABEL_25;
      }

      v16 = [(TVMediaInfo *)self contentView];
      v17 = [(TVMediaInfo *)v8 contentView];
      v31 = v16;
      if (v16 != v17)
      {
        v12 = 0;
LABEL_24:

LABEL_25:
        if (v10 == v11)
        {
LABEL_27:

          goto LABEL_28;
        }

LABEL_26:

        goto LABEL_27;
      }

      v28 = v17;
      v18 = [(TVMediaInfo *)self imageProxies];
      v29 = [(TVMediaInfo *)v8 imageProxies];
      v30 = v18;
      if (v18 == v29 || (-[TVMediaInfo imageProxies](self, "imageProxies"), v19 = objc_claimAutoreleasedReturnValue(), -[TVMediaInfo imageProxies](v8, "imageProxies"), v24 = objc_claimAutoreleasedReturnValue(), v25 = v19, [v19 isEqualToArray:v24]))
      {
        v20 = [(TVMediaInfo *)self backgroundColor];
        v26 = [(TVMediaInfo *)v8 backgroundColor];
        v27 = v20;
        if (v20 == v26)
        {

          v12 = 1;
        }

        else
        {
          v23 = [(TVMediaInfo *)self backgroundColor];
          v21 = [(TVMediaInfo *)v8 backgroundColor];
          v12 = [v23 isEqual:v21];
        }

        if (v30 == v29)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v12 = 0;
      }

LABEL_23:
      v17 = v28;
      goto LABEL_24;
    }

    v12 = 0;
  }

LABEL_28:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIntent:{-[TVMediaInfo intent](self, "intent")}];
  v5 = [(TVMediaInfo *)self playlist];
  [v4 setPlaylist:v5];

  v6 = [(TVMediaInfo *)self overlayView];
  [v4 setOverlayView:v6];

  v7 = [(TVMediaInfo *)self contentView];
  [v4 setContentView:v7];

  v8 = [(TVMediaInfo *)self imageProxies];
  [v4 setImageProxies:v8];

  v9 = [(TVMediaInfo *)self backgroundColor];
  [v4 setBackgroundColor:v9];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TVMediaInfo *)self intent];
  v7 = [(TVMediaInfo *)self overlayView];
  v8 = [(TVMediaInfo *)self contentView];
  v9 = [(TVMediaInfo *)self backgroundColor];
  v10 = [(TVMediaInfo *)self playlist];
  v11 = [(TVMediaInfo *)self imageProxies];
  v12 = [v3 stringWithFormat:@"<%@: %p> Intent = %lu, overlayView = %@, contentView = %@, backgroundColor = %@, playlist = %@, imageProxies = %@", v5, self, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end