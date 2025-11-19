@interface UIPDFPageRenderJob
- (BOOL)hasPage;
- (CGSize)size;
- (UIImage)image;
- (UIPDFPageRenderJob)initWithPage:(id)a3 maxSize:(CGSize)a4 queuePriority:(int64_t)a5;
- (UIPDFPageRenderOperation)operation;
- (void)cancel;
- (void)cancelOperation;
- (void)cancelOperationForTarget:(id)a3;
- (void)dealloc;
- (void)releaseOperation;
- (void)renderImage;
- (void)sendImage;
- (void)sendImageTo:(id)a3 callback:(SEL)a4 userData:(id)a5;
- (void)setOperation:(id)a3;
- (void)setTarget:(id)a3 callback:(SEL)a4 userData:(id)a5;
@end

@implementation UIPDFPageRenderJob

- (BOOL)hasPage
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_page != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (UIPDFPageRenderJob)initWithPage:(id)a3 maxSize:(CGSize)a4 queuePriority:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v16.receiver = self;
  v16.super_class = UIPDFPageRenderJob;
  v9 = [(UIPDFPageRenderJob *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_target = 0;
    v11 = a3;
    v10->_page = v11;
    v12 = [(UIPDFPage *)v11 pageNumber];
    v13 = v12 - 1;
    if (!v12)
    {
      v13 = 0;
    }

    v10->_pageIndex = v13;
    v10->_size.width = width;
    v10->_size.height = height;
    v10->_priority = a5;
    v14 = [[UIPDFPageRenderOperation alloc] initWithJob:v10];
    v10->_operation = v14;
    [(UIPDFPageRenderOperation *)v14 setQueuePriority:a5];
    v10->_lock._os_unfair_lock_opaque = 0;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIPDFPageRenderJob;
  [(UIPDFPageRenderJob *)&v3 dealloc];
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  v2 = self;
  sendPending = self->_sendPending;
  if (sendPending && self->_target && self->_callback)
  {
    releaseWhenDone = self->_releaseWhenDone;
    v5 = self->_image;
    v6 = self->_target;
    if (self->_callback)
    {
      callback = self->_callback;
    }

    else
    {
      callback = 0;
    }

    v15 = self->_userData;
    v2 = self;
    v9 = v15;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v5 = 0;
    v6 = 0;
    callback = 0;
    v9 = 0;
    releaseWhenDone = self->_releaseWhenDone && sendPending;
  }

  operation = v2->_operation;
  if (operation)
  {
    [(UIPDFPageRenderOperation *)operation cancel];
    v2 = self;
    self->_operation = 0;
  }

  image = v2->_image;
  if (image)
  {

    v2 = self;
  }

  userData = v2->_userData;
  if (userData)
  {

    v2 = self;
  }

  p_target = &v2->_target;
  target = v2->_target;
  if (target)
  {

    v2 = self;
  }

  v2->_image = 0;
  p_target[1] = 0;
  p_target[2] = 0;
  *p_target = 0;
  *(p_target + 24) = 0;

  self->_page = 0;
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    [v6 performSelector:callback withObject:v5 withObject:v9];
  }

  if (releaseWhenDone)
  {
  }
}

- (void)cancelOperation
{
  os_unfair_lock_lock(&self->_lock);
  v2 = self;
  sendPending = self->_sendPending;
  if (sendPending && self->_target && self->_callback)
  {
    releaseWhenDone = self->_releaseWhenDone;
    v5 = self->_image;
    v6 = self->_target;
    if (self->_callback)
    {
      callback = self->_callback;
    }

    else
    {
      callback = 0;
    }

    v14 = self->_userData;
    v2 = self;
    v9 = v14;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v5 = 0;
    v6 = 0;
    callback = 0;
    v9 = 0;
    releaseWhenDone = self->_releaseWhenDone && sendPending;
  }

  operation = v2->_operation;
  if (operation)
  {
    [(UIPDFPageRenderOperation *)operation cancel];
    v2 = self;
    self->_operation = 0;
  }

  userData = v2->_userData;
  if (userData)
  {

    v2 = self;
  }

  p_target = &v2->_target;
  target = v2->_target;
  if (target)
  {

    v2 = self;
  }

  *p_target = 0;
  p_target[1] = 0;
  *(p_target + 24) = 0;
  p_target[2] = 0;

  self->_page = 0;
  os_unfair_lock_unlock(&self->_lock);
  if (v8)
  {
    [v6 performSelector:callback withObject:v5 withObject:v9];
  }

  if (releaseWhenDone)
  {
  }
}

- (void)cancelOperationForTarget:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  v4 = self;
  p_target = &self->_target;
  if (self->_target == a3)
  {
    sendPending = self->_sendPending;
    if (a3 && self->_sendPending && self->_callback)
    {
      v7 = self->_releaseWhenDone && sendPending;
      v8 = self->_image;
      v9 = self->_target;
      if (self->_callback)
      {
        callback = self->_callback;
      }

      else
      {
        callback = 0;
      }

      v13 = self->_userData;
      v4 = self;
      v12 = v13;
      v11 = 1;
    }

    else
    {
      v11 = 0;
      v8 = 0;
      v9 = 0;
      callback = 0;
      v12 = 0;
      v7 = self->_releaseWhenDone && sendPending;
    }

    operation = v4->_operation;
    if (operation)
    {
      [(UIPDFPageRenderOperation *)operation cancel];
      v4 = self;
      self->_operation = 0;
    }

    userData = v4->_userData;
    if (userData)
    {

      v4 = self;
    }

    if (*p_target)
    {

      v4 = self;
    }

    *p_target = 0;
    self->_callback = 0;
    self->_sendPending = 0;
    self->_userData = 0;

    self->_page = 0;
    os_unfair_lock_unlock(&self->_lock);
    if (v11)
    {
      [v9 performSelector:callback withObject:v8 withObject:v12];

      if ((v7 & 1) == 0)
      {
        return;
      }
    }

    else if (!v7)
    {
      return;
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)setTarget:(id)a3 callback:(SEL)a4 userData:(id)a5
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_sendPending && self->_target && self->_callback)
  {
    v16 = self->_image;
    v9 = self->_target;
    if (self->_callback)
    {
      callback = self->_callback;
    }

    else
    {
      callback = 0;
    }

    v12 = self->_userData;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v16 = 0;
    v9 = 0;
    callback = 0;
    v12 = 0;
  }

  userData = self->_userData;
  if (userData)
  {
  }

  target = self->_target;
  if (target)
  {
  }

  self->_target = a3;
  if (a4)
  {
    v15 = a4;
  }

  else
  {
    v15 = 0;
  }

  self->_callback = v15;
  self->_userData = a5;
  self->_sendPending = 1;
  os_unfair_lock_unlock(&self->_lock);
  if (v11)
  {
    [v9 performSelector:callback withObject:v16 withObject:v12];
  }
}

- (void)setOperation:(id)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_operation != a3)
  {
    v5 = a3;

    self->_operation = a3;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (UIPDFPageRenderOperation)operation
{
  os_unfair_lock_lock(&self->_lock);
  operation = self->_operation;
  os_unfair_lock_unlock(&self->_lock);
  return operation;
}

- (void)releaseOperation
{
  os_unfair_lock_lock(&self->_lock);

  self->_operation = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (UIImage)image
{
  os_unfair_lock_lock(&self->_lock);
  image = self->_image;
  os_unfair_lock_unlock(&self->_lock);
  return image;
}

- (void)renderImage
{
  v35 = *MEMORY[0x1E69E9840];
  if (self->_page)
  {
    os_unfair_lock_lock(&self->_lock);
    page = self->_page;
    if (page)
    {
      v4 = trunc(self->_size.width);
      v5 = trunc(self->_size.height);
      v6 = 1.0;
      if (v4 >= 1.0)
      {
        v7 = v4;
      }

      else
      {
        v7 = 1.0;
      }

      if (v5 >= 1.0)
      {
        v8 = v5;
      }

      else
      {
        v8 = 1.0;
      }

      [(UIPDFPage *)page cropBoxAccountForRotation];
      if (v9 <= 0.0)
      {
        v11 = 1.0;
      }

      else
      {
        v11 = v7 / v9;
      }

      if (v10 > 0.0)
      {
        v6 = v8 / v10;
      }

      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v13 = CGBitmapContextCreate(0, v7, v8, 8uLL, 0, DeviceRGB, 0x4001u);
      CGContextSetFillColorWithColor(v13, [+[UIColor CGColor] whiteColor];
      v37.origin.x = 0.0;
      v37.origin.y = 0.0;
      v37.size.width = v7;
      v37.size.height = v8;
      CGContextFillRect(v13, v37);
      CGContextScaleCTM(v13, v11, v6);
      v14 = [(UIPDFPage *)self->_page rotation];
      if (v14)
      {
        memset(&v33, 0, sizeof(v33));
        CGAffineTransformMakeRotation(&v33, v14 * -0.0174532925);
        [(UIPDFPage *)self->_page cropBox];
        transform = v33;
        v39 = CGRectApplyAffineTransform(v38, &transform);
        CGContextTranslateCTM(v13, -v39.origin.x, -v39.origin.y);
        transform = v33;
        CGContextConcatCTM(v13, &transform);
      }

      else
      {
        [(UIPDFPage *)self->_page cropBox];
        CGContextTranslateCTM(v13, -v15, -v16);
      }

      v17 = CGPDFPageRetain([(UIPDFPage *)self->_page CGPage]);
      v18 = self;
      os_unfair_lock_unlock(&self->_lock);
      CGContextDrawPDFPageWithProgressCallback();
      CGPDFPageRelease(v17);
      if (self->_userData)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([self->_userData objectForKey:kUIPDFPageRenderAnnotationToImage])
          {
            v19 = [(UIPDFPage *)self->_page annotations];
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v20 = [v19 countByEnumeratingWithState:&v28 objects:v34 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v29;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v29 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v28 + 1) + 8 * i);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    [v24 drawInContext:v13];
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v28 objects:v34 count:16];
              }

              while (v21);
            }
          }
        }
      }

      os_unfair_lock_lock(&self->_lock);
      if (self->_page)
      {
        Image = CGBitmapContextCreateImage(v13);
      }

      else
      {
        Image = 0;
      }

      CGContextRelease(v13);
      CGColorSpaceRelease(DeviceRGB);
      if (Image)
      {
        v26 = [[UIImage alloc] initWithCGImage:Image];
      }

      else
      {
        v26 = 0;
      }

      v27 = self->_image;
      if (v27)
      {
      }

      self->_image = v26;

      self->_page = 0;
      os_unfair_lock_unlock(&self->_lock);
      CGImageRelease(Image);
    }

    else
    {

      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

- (void)sendImage
{
  os_unfair_lock_lock(&self->_lock);
  v2 = self;
  sendPending = self->_sendPending;
  if (sendPending && self->_target && self->_callback)
  {
    releaseWhenDone = self->_releaseWhenDone;
    v5 = self->_image;
    v6 = self->_target;
    if (self->_callback)
    {
      callback = self->_callback;
    }

    else
    {
      callback = 0;
    }

    v9 = self->_userData;
    v2 = self;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v5 = 0;
    v6 = 0;
    callback = 0;
    v9 = 0;
    releaseWhenDone = self->_releaseWhenDone && sendPending;
  }

  userData = v2->_userData;
  if (userData)
  {

    v2 = self;
  }

  p_target = &v2->_target;
  target = v2->_target;
  if (target)
  {

    v2 = self;
  }

  *p_target = 0;
  p_target[1] = 0;
  *(p_target + 24) = 0;
  p_target[2] = 0;
  os_unfair_lock_unlock(&v2->_lock);
  if (v8)
  {
    [v6 performSelector:callback withObject:v5 withObject:v9];
  }

  if (releaseWhenDone)
  {
  }
}

- (void)sendImageTo:(id)a3 callback:(SEL)a4 userData:(id)a5
{
  os_unfair_lock_lock(&self->_lock);
  image = self->_image;
  if (image)
  {
    v20 = self->_image;
    v10 = image;
    os_unfair_lock_unlock(&self->_lock);
    [a3 performSelector:a4 withObject:v20 withObject:a5];
  }

  else
  {
    if (self->_sendPending && (target = self->_target) != 0 && (p_callback = &self->_callback, self->_callback))
    {
      v20 = target;
      if (*p_callback)
      {
        v13 = *p_callback;
      }

      else
      {
        v13 = 0;
      }

      v15 = self->_userData;
      v14 = 1;
    }

    else
    {
      v14 = 0;
      v20 = 0;
      v13 = 0;
      v15 = 0;
    }

    userData = self->_userData;
    if (userData)
    {
    }

    v17 = self->_target;
    if (v17)
    {
    }

    self->_target = a3;
    if (a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = 0;
    }

    self->_callback = v18;
    self->_userData = a5;
    self->_sendPending = 1;
    operation = self->_operation;
    if (operation && ![(UIPDFPageRenderOperation *)operation isExecuting])
    {
      [(UIPDFPageRenderOperation *)self->_operation setQueuePriority:4];
      os_unfair_lock_unlock(&self->_lock);
      if ((v14 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
      if (!v14)
      {
        return;
      }
    }

    [(UIImage *)v20 performSelector:v13 withObject:0 withObject:v15];
  }
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end