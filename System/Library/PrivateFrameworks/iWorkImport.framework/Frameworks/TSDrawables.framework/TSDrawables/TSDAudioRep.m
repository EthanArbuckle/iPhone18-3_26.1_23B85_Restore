@interface TSDAudioRep
- (CGRect)clipRect;
- (TSDAudioRep)initWithLayout:(id)a3 canvas:(id)a4;
- (TSDMovieInfo)movieInfo;
- (void)willBeRemoved;
@end

@implementation TSDAudioRep

- (TSDAudioRep)initWithLayout:(id)a3 canvas:(id)a4
{
  v10.receiver = self;
  v10.super_class = TSDAudioRep;
  v4 = [(TSDRep *)&v10 initWithLayout:a3 canvas:a4];
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_movieInfo(v4, v5, v6);

    if (!v8)
    {

      return 0;
    }
  }

  return v7;
}

- (TSDMovieInfo)movieInfo
{
  objc_opt_class();
  v5 = objc_msgSend_info(self, v3, v4);
  v6 = TSUDynamicCast();

  return v6;
}

- (CGRect)clipRect
{
  objc_msgSend_naturalBounds(self, a2, v2);
  v6 = objc_msgSend_canvas(self, v4, v5);
  objc_msgSend_viewScale(v6, v7, v8);
  TSUMultiplyRectScalar();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)willBeRemoved
{
  v2.receiver = self;
  v2.super_class = TSDAudioRep;
  [(TSDMediaRep *)&v2 willBeRemoved];
}

@end