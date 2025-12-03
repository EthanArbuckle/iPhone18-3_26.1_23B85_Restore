@interface CACSystemAperatureBorderItem
+ (id)borderItemsForRect:(CGRect)rect minimumRect:(CGRect)minimumRect;
- (CGRect)elementFrame;
- (CGSize)elementLabelContainerSize;
@end

@implementation CACSystemAperatureBorderItem

+ (id)borderItemsForRect:(CGRect)rect minimumRect:(CGRect)minimumRect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v40[9] = *MEMORY[0x277D85DE8];
  v42 = CGRectInset(rect, 10.0, 10.0);
  v38 = v42.origin.x;
  v8 = v42.origin.y;
  v9 = v42.size.width;
  v10 = v42.size.height;
  v11 = objc_alloc_init(CACSystemAperatureBorderItem);
  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MinX = CGRectGetMinX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MinY = CGRectGetMinY(v44);
  v11->_frame.origin.x = MinX;
  v11->_frame.origin.y = MinY;
  v11->_frame.size.width = width;
  v11->_frame.size.height = 1.0;
  v14 = objc_alloc_init(CACSystemAperatureBorderItem);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  v15 = CGRectGetMinX(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  MaxY = CGRectGetMaxY(v46);
  v14->_frame.origin.x = v15;
  v14->_frame.origin.y = MaxY;
  v14->_frame.size.width = width;
  v14->_frame.size.height = 1.0;
  v17 = objc_alloc_init(CACSystemAperatureBorderItem);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v18 = CGRectGetMinX(v47);
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = width;
  v48.size.height = height;
  v19 = CGRectGetMinY(v48);
  v17->_frame.origin.x = v18;
  v17->_frame.origin.y = v19;
  v17->_frame.size.width = 1.0;
  v17->_frame.size.height = height;
  v20 = objc_alloc_init(CACSystemAperatureBorderItem);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  MaxX = CGRectGetMaxX(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v22 = CGRectGetMinY(v50);
  v20->_frame.origin.x = MaxX;
  v20->_frame.origin.y = v22;
  v20->_frame.size.width = 1.0;
  v20->_frame.size.height = height;
  v23 = objc_alloc_init(CACSystemAperatureBorderItem);
  v51.origin.x = v38;
  v51.origin.y = v8;
  v51.size.width = v9;
  v51.size.height = v10;
  v24 = CGRectGetMinX(v51);
  v52.origin.x = v38;
  v52.origin.y = v8;
  v52.size.width = v9;
  v52.size.height = v10;
  v25 = CGRectGetMinY(v52);
  v23->_frame.origin.x = v24;
  v23->_frame.origin.y = v25;
  v23->_frame.size.width = v9;
  v23->_frame.size.height = 1.0;
  v26 = objc_alloc_init(CACSystemAperatureBorderItem);
  v53.origin.x = v38;
  v53.origin.y = v8;
  v53.size.width = v9;
  v53.size.height = v10;
  v27 = CGRectGetMinX(v53);
  v54.origin.x = v38;
  v54.origin.y = v8;
  v54.size.width = v9;
  v54.size.height = v10;
  v28 = CGRectGetMaxY(v54);
  v26->_frame.origin.x = v27;
  v26->_frame.origin.y = v28;
  v26->_frame.size.width = v9;
  v26->_frame.size.height = 1.0;
  v29 = objc_alloc_init(CACSystemAperatureBorderItem);
  v55.origin.x = v38;
  v55.origin.y = v8;
  v55.size.width = v9;
  v55.size.height = v10;
  v30 = CGRectGetMinX(v55);
  v56.origin.x = v38;
  v56.origin.y = v8;
  v56.size.width = v9;
  v56.size.height = v10;
  v31 = CGRectGetMinY(v56);
  v29->_frame.origin.x = v30;
  v29->_frame.origin.y = v31;
  v29->_frame.size.width = 1.0;
  v29->_frame.size.height = v10;
  v32 = objc_alloc_init(CACSystemAperatureBorderItem);
  v57.origin.x = v38;
  v57.origin.y = v8;
  v57.size.width = v9;
  v57.size.height = v10;
  v33 = CGRectGetMaxX(v57);
  v58.origin.x = v38;
  v58.origin.y = v8;
  v58.size.width = v9;
  v58.size.height = v10;
  v34 = CGRectGetMinY(v58);
  v32->_frame.origin.x = v33;
  v32->_frame.origin.y = v34;
  v32->_frame.size.width = 1.0;
  v32->_frame.size.height = v10;
  v35 = objc_alloc_init(CACSystemAperatureBorderItem);
  v35->_frame = CGRectInset(minimumRect, 2.0, 2.0);
  v40[0] = v11;
  v40[1] = v14;
  v40[2] = v17;
  v40[3] = v20;
  v40[4] = v23;
  v40[5] = v26;
  v40[6] = v29;
  v40[7] = v32;
  v40[8] = v35;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:9];

  return v36;
}

- (CGRect)elementFrame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)elementLabelContainerSize
{
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end