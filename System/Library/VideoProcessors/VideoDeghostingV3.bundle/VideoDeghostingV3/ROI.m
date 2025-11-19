@interface ROI
- (ROI)initWithBbox:(ROI *)self;
- (int64_t)compareSelfAsLSWithAnotherLS:(id)a3;
- (void)reflectAroundCenter:(ROI *)self;
@end

@implementation ROI

- (ROI)initWithBbox:(ROI *)self
{
  v7 = v2;
  v8.receiver = self;
  v8.super_class = ROI;
  v3 = [(ROI *)&v8 init];
  v4 = v3;
  if (v3)
  {
    *&v3->_bbox[4] = v7;
    v5 = v3;
  }

  else
  {
    [ROI initWithBbox:];
  }

  return v4;
}

- (void)reflectAroundCenter:(ROI *)self
{
  v3 = v2;
  [(ROI *)self bbox];
  v7 = v5;
  [(ROI *)self bbox];
  v8 = COERCE_DOUBLE(vadd_f32(vsub_f32(v3, vadd_f32(v7, *&vextq_s8(v6, v6, 8uLL))), v3));
  [(ROI *)self bbox];

  [(ROI *)self setBbox:v8];
}

- (int64_t)compareSelfAsLSWithAnotherLS:(id)a3
{
  v4 = a3;
  [(ROI *)self area];
  if (v5 > 18000.0)
  {
    [v4 area];
    if (v6 <= 17820.0)
    {
      goto LABEL_12;
    }
  }

  [(ROI *)self area];
  if (v7 <= 17820.0)
  {
    [v4 area];
    if (v8 > 18000.0)
    {
      goto LABEL_9;
    }
  }

  [v4 dist2ghost];
  v10 = v9;
  [(ROI *)self dist2ghost];
  if (v10 > (v11 + 32.0))
  {
    goto LABEL_9;
  }

  [v4 dist2ghost];
  if (v12 != INFINITY)
  {
    [v4 dist2ghost];
    v14 = v13;
    [(ROI *)self dist2ghost];
    if (vabds_f32(v14, v15) > 32.0)
    {
      goto LABEL_12;
    }
  }

  [v4 area];
  v17 = v16;
  [(ROI *)self area];
  if (v17 < (v18 + -256.0) || ([v4 area], v21 = v20, -[ROI area](self, "area"), vabds_f32(v21, v22) <= 256.0) && (objc_msgSend(v4, "dist2opticalCenter"), v24 = v23, -[ROI dist2opticalCenter](self, "dist2opticalCenter"), v24 > v25))
  {
LABEL_9:
    v19 = -1;
  }

  else
  {
LABEL_12:
    v19 = 1;
  }

  return v19;
}

- (uint64_t)initWithBbox:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end