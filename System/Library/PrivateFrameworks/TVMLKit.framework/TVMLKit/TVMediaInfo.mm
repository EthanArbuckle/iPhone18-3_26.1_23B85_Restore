@interface TVMediaInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation TVMediaInfo

- (unint64_t)hash
{
  playlist = [(TVMediaInfo *)self playlist];
  v4 = [playlist hash];

  overlayView = [(TVMediaInfo *)self overlayView];
  v6 = [overlayView hash] ^ v4;

  imageProxies = [(TVMediaInfo *)self imageProxies];
  v8 = [imageProxies hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
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
    intent = [(TVMediaInfo *)self intent];
    if (intent == [(TVMediaInfo *)v8 intent])
    {
      playlist = [(TVMediaInfo *)self playlist];
      playlist2 = [(TVMediaInfo *)v8 playlist];
      if (playlist != playlist2)
      {
        playlist3 = [(TVMediaInfo *)self playlist];
        playlist4 = [(TVMediaInfo *)v8 playlist];
        if (![playlist3 isEqual:playlist4])
        {
          v12 = 0;
          goto LABEL_26;
        }
      }

      overlayView = [(TVMediaInfo *)self overlayView];
      overlayView2 = [(TVMediaInfo *)v8 overlayView];
      v15 = overlayView2;
      if (overlayView != overlayView2)
      {

        v12 = 0;
        goto LABEL_25;
      }

      contentView = [(TVMediaInfo *)self contentView];
      contentView2 = [(TVMediaInfo *)v8 contentView];
      v31 = contentView;
      if (contentView != contentView2)
      {
        v12 = 0;
LABEL_24:

LABEL_25:
        if (playlist == playlist2)
        {
LABEL_27:

          goto LABEL_28;
        }

LABEL_26:

        goto LABEL_27;
      }

      v28 = contentView2;
      imageProxies = [(TVMediaInfo *)self imageProxies];
      imageProxies2 = [(TVMediaInfo *)v8 imageProxies];
      v30 = imageProxies;
      if (imageProxies == imageProxies2 || (-[TVMediaInfo imageProxies](self, "imageProxies"), v19 = objc_claimAutoreleasedReturnValue(), -[TVMediaInfo imageProxies](v8, "imageProxies"), v24 = objc_claimAutoreleasedReturnValue(), v25 = v19, [v19 isEqualToArray:v24]))
      {
        backgroundColor = [(TVMediaInfo *)self backgroundColor];
        backgroundColor2 = [(TVMediaInfo *)v8 backgroundColor];
        v27 = backgroundColor;
        if (backgroundColor == backgroundColor2)
        {

          v12 = 1;
        }

        else
        {
          backgroundColor3 = [(TVMediaInfo *)self backgroundColor];
          backgroundColor4 = [(TVMediaInfo *)v8 backgroundColor];
          v12 = [backgroundColor3 isEqual:backgroundColor4];
        }

        if (v30 == imageProxies2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v12 = 0;
      }

LABEL_23:
      contentView2 = v28;
      goto LABEL_24;
    }

    v12 = 0;
  }

LABEL_28:

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIntent:{-[TVMediaInfo intent](self, "intent")}];
  playlist = [(TVMediaInfo *)self playlist];
  [v4 setPlaylist:playlist];

  overlayView = [(TVMediaInfo *)self overlayView];
  [v4 setOverlayView:overlayView];

  contentView = [(TVMediaInfo *)self contentView];
  [v4 setContentView:contentView];

  imageProxies = [(TVMediaInfo *)self imageProxies];
  [v4 setImageProxies:imageProxies];

  backgroundColor = [(TVMediaInfo *)self backgroundColor];
  [v4 setBackgroundColor:backgroundColor];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  intent = [(TVMediaInfo *)self intent];
  overlayView = [(TVMediaInfo *)self overlayView];
  contentView = [(TVMediaInfo *)self contentView];
  backgroundColor = [(TVMediaInfo *)self backgroundColor];
  playlist = [(TVMediaInfo *)self playlist];
  imageProxies = [(TVMediaInfo *)self imageProxies];
  v12 = [v3 stringWithFormat:@"<%@: %p> Intent = %lu, overlayView = %@, contentView = %@, backgroundColor = %@, playlist = %@, imageProxies = %@", v5, self, intent, overlayView, contentView, backgroundColor, playlist, imageProxies];

  return v12;
}

@end