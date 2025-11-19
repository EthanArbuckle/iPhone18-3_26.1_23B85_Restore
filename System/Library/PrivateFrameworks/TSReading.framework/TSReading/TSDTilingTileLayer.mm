@interface TSDTilingTileLayer
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)location;
- (id)tileContentsLayer;
- (void)display;
- (void)drawInContext:(CGContext *)a3;
- (void)setNeedsDisplayInRect:(CGRect)a3;
- (void)setNeedsDisplayInRectIgnoringBackground:(CGRect)a3;
- (void)updateFrameWithTileSize:(CGSize)a3 tilesWide:(unint64_t)a4 tilesHigh:(unint64_t)a5 geometryProvider:(id)a6;
@end

@implementation TSDTilingTileLayer

- (void)display
{
  v3 = [(TSDTilingTileLayer *)self superlayer];
  v4 = [v3 delegate];
  if ([v3 drawsInBackground] && (objc_opt_respondsToSelector() & 1) != 0 && (v5 = objc_msgSend(v4, "queueForDrawingTilingLayerInBackground:", v3)) != 0 && (v6 = v5, objc_msgSend(MEMORY[0x277CCACC8], "isMainThread")))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__TSDTilingTileLayer_display__block_invoke;
    v8[3] = &unk_279D46770;
    v8[4] = self;
    [v6 drainAndPerformSync:v8];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = TSDTilingTileLayer;
    [(TSDTilingTileLayer *)&v7 display];
  }
}

id __29__TSDTilingTileLayer_display__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = TSDTilingTileLayer;
  return objc_msgSendSuper2(&v2, sel_display);
}

- (void)drawInContext:(CGContext *)a3
{
  v5 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  v6 = MEMORY[0x277CCAE60];
  [(TSDTilingTileLayer *)self position];
  [v5 setValue:objc_msgSend(v6 forKey:{"valueWithCGPoint:"), @"TSDTilingTileLayerPositionTLSKey"}];
  [-[TSDTilingTileLayer superlayer](self "superlayer")];
  v7 = [objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];

  [v7 removeObjectForKey:@"TSDTilingTileLayerPositionTLSKey"];
}

- (void)updateFrameWithTileSize:(CGSize)a3 tilesWide:(unint64_t)a4 tilesHigh:(unint64_t)a5 geometryProvider:(id)a6
{
  height = a3.height;
  width = a3.width;
  [-[TSDTilingTileLayer superlayer](self "superlayer")];
  v45 = v15;
  v46 = v14;
  mIndex = self->mIndex;
  v17 = mIndex / a4;
  v18 = mIndex % a4;
  v49 = 0;
  v47 = v13;
  v48 = v12;
  if (a6)
  {
    [a6 tileGeometryRectWithLayer:-[TSDTilingTileLayer superlayer](self atIndex:"superlayer") mask:{self->mIndex, &v49}];
    v20 = v19;
    v22 = v21;
  }

  else
  {
    v20 = v12 + width * v18;
    v22 = v13 + height * v17;
  }

  [(TSDTilingTileLayer *)self position];
  if (v20 != v24 || v22 != v23)
  {
    [(TSDTilingTileLayer *)self setPosition:v20, v22];
  }

  v26 = TSDRectWithSize();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  if (!a6 && (v18 == a4 - 1 || v17 == a5 - 1))
  {
    v50.origin.x = v20;
    v50.origin.y = v22;
    v50.size.width = width;
    v50.size.height = height;
    v53.origin.y = v47;
    v53.origin.x = v48;
    v53.size.height = v45;
    v53.size.width = v46;
    CGRectIntersection(v50, v53);
    v26 = TSDRectWithSize();
    v28 = v34;
    v30 = v35;
    v32 = v36;
  }

  [(TSDTilingTileLayer *)self bounds];
  v54.origin.x = v37;
  v54.origin.y = v38;
  v54.size.width = v39;
  v54.size.height = v40;
  v51.origin.x = v26;
  v51.origin.y = v28;
  v51.size.width = v30;
  v51.size.height = v32;
  if (!CGRectEqualToRect(v51, v54))
  {
    [(TSDTilingTileLayer *)self bounds];
    v41 = CGRectEqualToRect(v52, *MEMORY[0x277CBF3A0]);
    [(TSDTilingTileLayer *)self setBounds:v26, v28, v30, v32];
    v42 = [(TSDTilingTileLayer *)self superlayer];
    if (v41)
    {
      [v42 i_setNeedsTileDisplayForTile:self];
    }

    else
    {
      [v42 setNeedsDisplay];
    }
  }

  v43 = v49;
  if (!a6)
  {
    v44 = v49 | (v18 == 0);
    if (v18 == a4 - 1)
    {
      v44 |= 2u;
    }

    if (mIndex < a4)
    {
      v44 |= 4u;
    }

    if (v17 == a5 - 1)
    {
      v43 = v44 | 8;
    }

    else
    {
      v43 = v44;
    }
  }

  if ([(TSDTilingTileLayer *)self edgeAntialiasingMask]!= v43)
  {
    [(TSDTilingTileLayer *)self setEdgeAntialiasingMask:v43];
  }
}

- (void)setNeedsDisplayInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(TSDTilingTileLayer *)self superlayer];
  if ([v8 drawsInBackground] && (objc_msgSend(v8, "delegate"), (objc_opt_respondsToSelector() & 1) != 0) && objc_msgSend(objc_msgSend(v8, "delegate"), "canDrawTilingLayerInBackground:", v8))
  {

    [v8 i_drawTileInBackground:self inRect:{x, y, width, height}];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TSDTilingTileLayer;
    [(TSDTilingTileLayer *)&v9 setNeedsDisplayInRect:x, y, width, height];
  }
}

- (void)setNeedsDisplayInRectIgnoringBackground:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = TSDTilingTileLayer;
  [(TSDTilingTileLayer *)&v3 setNeedsDisplayInRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (id)tileContentsLayer
{
  v2 = [(TSDTilingTileLayer *)self sublayers];

  return [v2 objectAtIndex:0];
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)location
{
  p_mLocation = &self->mLocation;
  x = self->mLocation.x;
  y = p_mLocation->y;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end