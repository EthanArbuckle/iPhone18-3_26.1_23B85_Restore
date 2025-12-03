@interface VKMapSnapshot
- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinateForPoint:(CGPoint)point;
- (CGPoint)pointForCoordinate:(id)coordinate;
- (VKMapSnapshot)initWithCoder:(id)coder;
- (id)_initWithImages:(id)images displayStyles:(id *)styles displayStylesCount:(unint64_t)count scale:(double)scale camera:(id)camera elevationScale:(float)elevationScale targetPointElevation:(float)elevation colorSpace:(__CFString *)self0;
- (id)description;
- (id)imageDataInFormat:(unint64_t)format;
- (id)imageSurfaceAtIndex:(unint64_t)index;
- (id)imageSurfaces;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateImagesWithBlock:(id)block;
@end

@implementation VKMapSnapshot

- (void)enumerateImagesWithBlock:(id)block
{
  blockCopy = block;
  if (self->_displayStylesCount)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = &self->_displayStyles[v6];
      v9 = *&v8->var4;
      v10 = *&v8->var0;
      v11 = [(NSArray *)self->_images objectAtIndexedSubscript:v7];
      v12 = 0;
      [v11 getValue:&v12];
      v3 = v3 & 0xFFFF000000000000 | (v10 | (v9 << 32)) & 0xFFFFFFFFFFFFLL;
      blockCopy[2](blockCopy, v3, v12);

      ++v7;
      ++v6;
    }

    while (v7 < self->_displayStylesCount);
  }
}

- (id)imageDataInFormat:(unint64_t)format
{
  v21 = *MEMORY[0x1E69E9840];
  p_images = &self->_images;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_images, "count")}];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *p_images;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    if (format)
    {
      v9 = @"public.png";
    }

    else
    {
      v9 = @"public.jpeg";
    }

    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        image = 0;
        [v11 getValue:&image];
        v12 = objc_alloc_init(MEMORY[0x1E695DF88]);
        v13 = CGImageDestinationCreateWithData(v12, v9, 1uLL, 0);
        CGImageDestinationAddImage(v13, image, 0);
        CGImageDestinationFinalize(v13);
        CFRelease(v13);
        [v5 addObject:v12];
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v5;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)coordinateForPoint:(CGPoint)point
{
  vkCamera = self->_vkCamera;
  if (vkCamera)
  {
    [(VKCamera *)vkCamera groundPointFromScreenPoint:self->_scale * point.x / self->_width, 1.0 - self->_scale * point.y / self->_height];
    v5 = v12 * 6.28318531;
    v6 = v13 * 6.28318531 + -3.14159265;
  }

  else
  {
    v5 = 0.0;
    v6 = -3.14159265;
  }

  v7 = exp(v6);
  v8 = atan(v7);
  v9 = fmod(v5, 6.28318531);
  v10 = fmod(v9 + 6.28318531, 6.28318531) * 57.2957795 + -180.0;
  v11 = v8 * 114.591559 + -90.0;
  result.var1 = v10;
  result.var0 = v11;
  return result;
}

- (CGPoint)pointForCoordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  v49 = *MEMORY[0x1E69E9840];
  v6 = *[(VKCamera *)self->_vkCamera position];
  v7 = tan(var0 * 0.00872664626 + 0.785398163);
  v8 = var1 * 0.00277777778;
  v9 = log(v7) * 0.159154943 + 0.5;
  v46[0] = v8 + 0.5;
  v46[1] = v9;
  v47 = 0.0;
  elevationRasters = self->_elevationRasters;
  if (elevationRasters)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v11 = elevationRasters;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v42 objects:v48 count:16];
    v13 = 0.0;
    if (v12)
    {
      v40 = v6;
      v14 = *v43;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v42 + 1) + 8 * i);
          tile = [v16 tile];
          v18 = 1 << *(tile + 1);
          v19 = -1.0 / v18;
          v20 = (v8 + 0.5 + v19 * *(tile + 8)) * v18;
          v21 = (v9 + v19 * (v18 + ~*(tile + 4))) * v18;
          v41[0] = v20;
          v41[1] = v21;
          [v16 tile];
          [(VKCamera *)self->_vkCamera position];
          if (v20 >= 0.0 && v20 <= 1.0 && v21 >= 0.0 && v21 <= 1.0)
          {
            [v16 getElevationAtPoint:v41];
            v13 = v24;
            goto LABEL_20;
          }
        }

        v12 = [(NSArray *)v11 countByEnumeratingWithState:&v42 objects:v48 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

LABEL_20:
      v6 = v40;
    }

    v47 = (v13 - self->_targetPointElevation) * (0.0000000249532021 * self->_elevationScale);
  }

  if (v8 > v6)
  {
    v25 = -0.5;
LABEL_26:
    v26 = v8 + v25;
    v46[0] = v26;
    goto LABEL_27;
  }

  v26 = v8 + 1.0;
  if (v8 + 1.0 < v6)
  {
    v25 = 1.5;
    goto LABEL_26;
  }

LABEL_27:
  v27.f64[0] = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>([(VKCamera *)self->_vkCamera scaledViewProjectionMatrix], v46);
  p_scale = &self->_scale;
  v29 = vld1q_dup_f64(p_scale);
  v27.f64[1] = v30;
  __asm { FMOV            V1.2D, #0.5 }

  v36 = vmulq_f64(v27, _Q1);
  *&v37.f64[0] = *&vaddq_f64(v36, _Q1);
  v37.f64[1] = vsubq_f64(_Q1, v36).f64[1];
  v38 = vdivq_f64(vmulq_f64(v37, vcvtq_f64_u64(*&self->_width)), v29);
  v39 = v38.f64[1];
  result.x = v38.f64[0];
  result.y = v39;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = VKMapSnapshot;
  v4 = [(VKMapSnapshot *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ size: (%zu, %zu)", v4, self->_width, self->_height];

  return v5;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  displayStyles = self->_displayStyles;
  if (displayStyles)
  {
    free(displayStyles);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_images;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        image = 0;
        [v8 getValue:&image];
        CGImageRelease(image);
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = VKMapSnapshot;
  [(VKMapSnapshot *)&v9 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBytes:self->_displayStyles length:6 * self->_displayStylesCount forKey:@"displayStyles"];
  [coderCopy encodeInteger:self->_displayStylesCount forKey:@"displayStylesCount"];
  memoryStats = self->_memoryStats;
  if (memoryStats)
  {
    [coderCopy encodeObject:memoryStats forKey:@"memoryStats"];
  }

  imageSurfaces = [(VKMapSnapshot *)self imageSurfaces];
  if (imageSurfaces)
  {
    [coderCopy encodeObject:imageSurfaces forKey:@"imageSurfaces"];
  }

  else
  {
    v7 = [(VKMapSnapshot *)self imageDataInFormat:1];
    if (v7)
    {
      [coderCopy encodeObject:v7 forKey:@"imageDatas"];
    }
  }

  [coderCopy encodeDouble:@"scale" forKey:self->_scale];
  [coderCopy encodeDouble:@"targetPointElevation" forKey:self->_targetPointElevation];
  vkCamera = self->_vkCamera;
  if (vkCamera)
  {
    [(VKCamera *)vkCamera cameraState];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  v9 = [MEMORY[0x1E696B098] value:&v12 withObjCType:{"{VKCameraState={RigidTransform<double, double>={Matrix<double, 3, 1>=[3d]}{Quaternion<double>={Matrix<double, 3, 1>=[3d]}d}}d{Unit<geo::RadianUnitDescription, double>=d}d}"}];
  [coderCopy encodeObject:v9 forKey:@"cameraState"];

  elevationRasters = self->_elevationRasters;
  if (elevationRasters)
  {
    [coderCopy encodeObject:elevationRasters forKey:@"elevationRasters"];
  }

  *&v10 = self->_elevationScale;
  [coderCopy encodeFloat:@"elevationScale" forKey:{v10, v12, v13, v14, v15, v16}];
  [coderCopy encodeObject:self->_colorSpace forKey:@"colorSpace"];
}

- (id)imageSurfaces
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_images, "count")}];
  for (i = 0; i < [(NSArray *)self->_images count]; ++i)
  {
    v5 = [(VKMapSnapshot *)self imageSurfaceAtIndex:i];
    [v3 addObject:v5];
  }

  return v3;
}

- (id)imageSurfaceAtIndex:(unint64_t)index
{
  v8 = 0;
  v3 = [(NSArray *)self->_images objectAtIndex:index];
  [v3 getValue:&v8];

  Property = CGImageGetProperty();
  v5 = Property;
  if (Property)
  {
    v6 = Property;
  }

  return v5;
}

- (VKMapSnapshot)initWithCoder:(id)coder
{
  v93 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v90.receiver = self;
  v90.super_class = VKMapSnapshot;
  v5 = [(VKMapSnapshot *)&v90 init];
  if (v5)
  {
    v6 = [coderCopy decodeIntegerForKey:@"displayStylesCount"];
    *(v5 + 9) = v6;
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorSpace"];
      v8 = *(v5 + 12);
      *(v5 + 12) = v7;

      size = 0;
      v9 = coderCopy;
      v10 = [coderCopy decodeBytesForKey:@"displayStyles" returnedLength:&size];
      if (size == 6 * *(v5 + 9))
      {
        v11 = malloc_type_malloc(size, 0x1000040274DC3F3uLL);
        *(v5 + 8) = v11;
        memcpy(v11, v10, size);
        obj = objc_alloc_init(MEMORY[0x1E695DF70]);
        v12 = objc_alloc(MEMORY[0x1E695DFD8]);
        v13 = objc_opt_class();
        v64 = [v12 initWithObjects:{v13, objc_opt_class(), 0}];
        v65 = [coderCopy decodeObjectOfClasses:? forKey:?];
        if (v65)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v32 = 0;
LABEL_43:

            goto LABEL_23;
          }

          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v14 = v65;
          v68 = v14;
          v15 = [v14 countByEnumeratingWithState:&v85 objects:v92 count:16];
          if (v15)
          {
            v66 = *v86;
            theString2 = *MEMORY[0x1E695F1C0];
            v63 = *MEMORY[0x1E695F1B0];
LABEL_8:
            v16 = 0;
            while (1)
            {
              if (*v86 != v66)
              {
                objc_enumerationMutation(v14);
              }

              v17 = *(*(&v85 + 1) + 8 * v16);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_37;
              }

              IOSurfaceSetOwnership();
              *(v5 + 2) = [v17 width];
              *(v5 + 3) = [v17 height];
              if ([v17 pixelFormat] != 1111970369)
              {
                goto LABEL_37;
              }

              v18 = *(v5 + 12);
              if (v18 && ((v19 = CFStringCompare(v18, theString2, 0), v20 = theString2, v19 == kCFCompareEqualTo) || (v21 = *(v5 + 12)) != 0 && (v22 = CFStringCompare(v21, v63, 0), v20 = v63, v22 == kCFCompareEqualTo)))
              {
                DeviceRGB = CGColorSpaceCreateWithName(v20);
              }

              else
              {
                DeviceRGB = CGColorSpaceCreateDeviceRGB();
              }

              v24 = DeviceRGB;
              v25 = v17;
              baseAddress = [v17 baseAddress];
              BytesPerElement = IOSurfaceGetBytesPerElement(v17);
              BytesPerRow = IOSurfaceGetBytesPerRow(v17);
              allocationSize = [v17 allocationSize];
              CFRetain(v17);
              v30 = CGDataProviderCreateWithData(v17, baseAddress, allocationSize, releaseIOSurface);
              [v17 incrementUseCount];
              image[0] = CGImageCreate(*(v5 + 2), *(v5 + 3), 8uLL, 8 * BytesPerElement, BytesPerRow, v24, 0x2006u, v30, 0, 1, kCGRenderingIntentDefault);
              CGImageSetProperty();
              v31 = [MEMORY[0x1E696B098] valueWithBytes:image objCType:"^{CGImage=}"];
              [obj addObject:v31];
              CGColorSpaceRelease(v24);
              CGDataProviderRelease(v30);

              ++v16;
              v14 = v68;
              if (v15 == v16)
              {
                v15 = [v68 countByEnumeratingWithState:&v85 objects:v92 count:16];
                if (v15)
                {
                  goto LABEL_8;
                }

                break;
              }
            }
          }
        }

        else
        {
          v34 = MEMORY[0x1E695DFD8];
          v35 = objc_opt_class();
          v36 = [v34 setWithObjects:{v35, objc_opt_class(), 0}];
          v69 = [coderCopy decodeObjectOfClasses:v36 forKey:@"imageDatas"];

          if (v69)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
LABEL_41:
              v32 = 0;
              v14 = v69;
              goto LABEL_42;
            }

            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v37 = v69;
            v38 = [v37 countByEnumeratingWithState:&v81 objects:v91 count:16];
            if (v38)
            {
              v39 = *v82;
              while (2)
              {
                for (i = 0; i != v38; ++i)
                {
                  if (*v82 != v39)
                  {
                    objc_enumerationMutation(v37);
                  }

                  v41 = *(*(&v81 + 1) + 8 * i);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {

                    goto LABEL_41;
                  }

                  v42 = CGDataProviderCreateWithCFData(v41);
                  image[0] = CGImageCreateWithPNGDataProvider(v42, 0, 1, kCGRenderingIntentDefault);
                  CGDataProviderRelease(v42);
                  *(v5 + 2) = CGImageGetWidth(image[0]);
                  *(v5 + 3) = CGImageGetHeight(image[0]);
                  v43 = [MEMORY[0x1E696B098] valueWithBytes:image objCType:"^{CGImage=}"];
                  [obj addObject:v43];
                }

                v38 = [v37 countByEnumeratingWithState:&v81 objects:v91 count:16];
                if (v38)
                {
                  continue;
                }

                break;
              }
            }
          }

          v14 = v69;
        }

        objc_storeStrong(v5 + 1, obj);
        [coderCopy decodeDoubleForKey:@"scale"];
        *(v5 + 4) = v44;
        [coderCopy decodeDoubleForKey:@"targetPointElevation"];
        *(v5 + 6) = v45;
        v46 = MEMORY[0x1E695DFD8];
        v47 = objc_opt_class();
        v48 = objc_opt_class();
        v49 = [v46 setWithObjects:{v47, v48, objc_opt_class(), 0}];
        v50 = [coderCopy decodeObjectOfClasses:v49 forKey:@"memoryStats"];
        v51 = *(v5 + 10);
        *(v5 + 10) = v50;

        v52 = MEMORY[0x1E695DFD8];
        v53 = objc_opt_class();
        v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
        v55 = [coderCopy decodeObjectOfClasses:v54 forKey:@"elevationRasters"];
        v56 = *(v5 + 11);
        *(v5 + 11) = v55;

        [coderCopy decodeFloatForKey:@"elevationScale"];
        *(v5 + 10) = v57;
        v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cameraState"];
        v59 = v58;
        v14 = v58;
        if (!strcmp([v58 objCType], "{VKCameraState={RigidTransform<double, double>={Matrix<double, 3, 1>=[3d]}{Quaternion<double>={Matrix<double, 3, 1>=[3d]}d}}d{Unit<geo::RadianUnitDescription, double>=d}d}"))
        {
          memset(v78, 0, sizeof(v78));
          *image = 0u;
          *&v79 = 0x3FF0000000000000;
          [v58 getValue:image];
          v60 = [[VKCamera alloc] initWithRunLoopController:0];
          v61 = *(v5 + 7);
          *(v5 + 7) = v60;

          v62 = *(v5 + 7);
          v71 = *image;
          v72 = *&v78[0];
          v73 = *(v78 + 8);
          v74 = *(&v78[1] + 1);
          v75 = v79;
          v76 = v80;
          [v62 setCameraState:&v71];
          v32 = v5;
          v14 = v58;
          goto LABEL_42;
        }

LABEL_37:
        v32 = 0;
LABEL_42:

        goto LABEL_43;
      }
    }
  }

  v32 = 0;
LABEL_23:

  return v32;
}

- (id)_initWithImages:(id)images displayStyles:(id *)styles displayStylesCount:(unint64_t)count scale:(double)scale camera:(id)camera elevationScale:(float)elevationScale targetPointElevation:(float)elevation colorSpace:(__CFString *)self0
{
  imagesCopy = images;
  cameraCopy = camera;
  v20 = cameraCopy;
  selfCopy = 0;
  if (imagesCopy && cameraCopy && scale >= 1.0)
  {
    if ([imagesCopy count] == count)
    {
      v32.receiver = self;
      v32.super_class = VKMapSnapshot;
      v22 = [(VKMapSnapshot *)&v32 init];
      v23 = v22;
      if (v22)
      {
        v22->_displayStylesCount = count;
        v24 = 6 * count;
        v25 = malloc_type_malloc(v24, 0x1000040274DC3F3uLL);
        v23->_displayStyles = v25;
        memcpy(v25, styles, v24);
        v26 = [imagesCopy copy];
        images = v23->_images;
        v23->_images = v26;

        for (i = 0; i < [(NSArray *)v23->_images count]; ++i)
        {
          image[0] = 0;
          v29 = [(NSArray *)v23->_images objectAtIndex:i];
          [v29 getValue:image];
          CGImageRetain(image[0]);
          if (!i)
          {
            v23->_width = CGImageGetWidth(image[0]);
            v23->_height = CGImageGetHeight(image[0]);
          }
        }

        objc_storeStrong(&v23->_vkCamera, camera);
        v23->_scale = scale;
        v23->_elevationScale = elevationScale;
        v23->_targetPointElevation = elevation;
        objc_storeStrong(&v23->_colorSpace, space);
      }

      self = v23;
      selfCopy = self;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        LOWORD(image[0]) = 0;
        _os_log_fault_impl(&dword_1B2754000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: images.count == displayStylesCount", image, 2u);
      }

      selfCopy = 0;
    }
  }

  return selfCopy;
}

@end