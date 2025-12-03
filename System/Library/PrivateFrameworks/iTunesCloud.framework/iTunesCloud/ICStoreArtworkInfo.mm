@interface ICStoreArtworkInfo
- (BOOL)_hasOriginalSize;
- (BOOL)isEqual:(id)equal;
- (CGColor)colorFromStringRepresentation:(id)representation;
- (CGColor)copyColorWithKind:(id)kind;
- (CGSize)originalSize;
- (ICStoreArtworkGradientInfo)gradientInfo;
- (ICStoreArtworkInfo)initWithArtworkResponseArray:(id)array;
- (ICStoreArtworkInfo)initWithArtworkResponseDictionary:(id)dictionary;
- (ICStoreArtworkInfo)initWithArtworkResponseValue:(id)value;
- (ICStoreArtworkInfo)initWithArtworkURL:(id)l;
- (ICStoreArtworkInfo)initWithCoder:(id)coder;
- (NSArray)textGradient;
- (NSString)stringRepresentation;
- (NSURL)artworkURL;
- (id)artworkURLWithSize:(CGSize)size cropStyle:(id)style format:(id)format preferP3ColorSpace:(BOOL)space;
- (unint64_t)hash;
- (unint64_t)imageTraits;
- (void)_sortResponseArray;
- (void)_sortSupportedSizesArray;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICStoreArtworkInfo

- (BOOL)_hasOriginalSize
{
  v2 = self->_responseDictionary;
  v3 = [(NSDictionary *)v2 objectForKey:@"width"];
  v4 = [(NSDictionary *)v2 objectForKey:@"height"];
  if (objc_opt_respondsToSelector())
  {
    v5 = objc_opt_respondsToSelector();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (void)_sortSupportedSizesArray
{
  selfCopy = self;
  v28 = *MEMORY[0x1E69E9840];
  sortedResponseArray = [(ICStoreArtworkInfo *)self sortedResponseArray];
  if ([sortedResponseArray count])
  {
    v19 = selfCopy;
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(sortedResponseArray, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = sortedResponseArray;
    v4 = sortedResponseArray;
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          v10 = [v9 objectForKey:@"width"];
          v11 = [v9 objectForKey:@"height"];
          if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
          {
            v21 = 0.0;
            v22 = 0.0;
            [v10 floatValue];
            v13 = v12;
            [v11 floatValue];
            v21 = v13;
            v22 = v14;
            v15 = [MEMORY[0x1E696B098] valueWithBytes:&v21 objCType:"{CGSize=dd}"];
            [(NSArray *)v20 addObject:v15];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v6);
    }

    sortedResponseArray = v18;
    selfCopy = v19;
    v16 = v20;
  }

  else
  {
    v16 = 0;
  }

  sortedSupportedSizesArray = selfCopy->_sortedSupportedSizesArray;
  selfCopy->_sortedSupportedSizesArray = v16;
}

- (void)_sortResponseArray
{
  v3 = [(NSArray *)self->_responseArray sortedArrayUsingComparator:&__block_literal_global_11980];
  v5 = v3;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  objc_storeStrong(&self->_sortedResponseArray, v4);
}

uint64_t __40__ICStoreArtworkInfo__sortResponseArray__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 objectForKey:@"width"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v6 = 0;
  }

  v7 = [v4 objectForKey:@"height"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v7 = 0;
  }

  v8 = [v5 objectForKey:@"width"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v8 = 0;
  }

  v9 = [v5 objectForKey:@"height"];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v9 = 0;
  }

  [v6 doubleValue];
  v11 = v10;
  [v7 doubleValue];
  v13 = (v11 + v12) * 0.5;
  [v8 doubleValue];
  v15 = v14;
  [v9 doubleValue];
  v17 = (v15 + v16) * 0.5;
  v18 = vabdd_f64(v13, v17);
  v19 = -1;
  if (v13 >= v17)
  {
    v19 = 1;
  }

  if (v18 <= 0.00000011920929)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  return v20;
}

- (ICStoreArtworkGradientInfo)gradientInfo
{
  v3 = [(NSDictionary *)self->_responseDictionary objectForKey:@"gradient"];
  if (_NSIsNSDictionary())
  {
    v4 = objc_alloc_init(ICStoreArtworkGradientInfo);
    v5 = [v3 objectForKey:@"color"];
    if (_NSIsNSString())
    {
      [(ICStoreArtworkGradientInfo *)v4 setColor:[(ICStoreArtworkInfo *)self colorFromStringRepresentation:v5]];
    }

    v6 = [v3 objectForKey:@"y1"];
    if (objc_opt_respondsToSelector())
    {
      [v6 doubleValue];
      [(ICStoreArtworkGradientInfo *)v4 setY1:?];
    }

    v7 = [v3 objectForKey:@"y2"];
    if (objc_opt_respondsToSelector())
    {
      [v7 doubleValue];
      [(ICStoreArtworkGradientInfo *)v4 setY2:?];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)textGradient
{
  v3 = [(NSDictionary *)self->_responseDictionary objectForKey:@"textGradient"];
  if (_NSIsNSArray())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__ICStoreArtworkInfo_textGradient__block_invoke;
    v6[3] = &unk_1E7BF50A8;
    v6[4] = self;
    v4 = [v3 msv_compactMap:v6];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (unint64_t)imageTraits
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"imageTraits"];
  if (_NSIsNSArray())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          if (_NSIsNSString() && [v9 isEqualToString:{@"hasTitle", v11}])
          {
            v6 = 1;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)stringRepresentation
{
  sizeInfo = [(ICStoreArtworkInfo *)self sizeInfo];
  type = [sizeInfo type];

  switch(type)
  {
    case 2:
      lastObject = [(NSArray *)self->_responseArray lastObject];
      v6 = [lastObject objectForKey:@"url"];

      break;
    case 1:
      absoluteString = [(NSDictionary *)self->_responseDictionary objectForKey:@"url"];
      goto LABEL_6;
    case 0:
      absoluteString = [(NSURL *)self->_artworkURL absoluteString];
LABEL_6:
      v6 = absoluteString;
      break;
    default:
      v6 = 0;
      break;
  }

  return v6;
}

- (CGSize)originalSize
{
  v2 = self->_responseDictionary;
  v3 = [(NSDictionary *)v2 objectForKey:@"width"];
  v4 = [(NSDictionary *)v2 objectForKey:@"height"];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [v3 doubleValue];
    v6 = v5;
    [v4 doubleValue];
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGColor)colorFromStringRepresentation:(id)representation
{
  v13 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  if (_NSIsNSString())
  {
    v4 = strtoul([representationCopy UTF8String], 0, 16);
    v5 = vand_s8(vshl_u32(vdup_n_s32(v4), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
    v6.i64[0] = v5.u32[0];
    v6.i64[1] = v5.u32[1];
    v10 = vdivq_f64(vcvtq_f64_u64(v6), vdupq_n_s64(0x406FE00000000000uLL));
    v11 = v4 / 255.0;
    v12 = 0x3FF0000000000000;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v8 = CGColorCreate(DeviceRGB, v10.f64);
    CGColorSpaceRelease(DeviceRGB);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGColor)copyColorWithKind:(id)kind
{
  v4 = [(NSDictionary *)self->_responseDictionary objectForKey:kind];
  v5 = [(ICStoreArtworkInfo *)self colorFromStringRepresentation:v4];

  return v5;
}

- (id)artworkURLWithSize:(CGSize)size cropStyle:(id)style format:(id)format preferP3ColorSpace:(BOOL)space
{
  spaceCopy = space;
  height = size.height;
  width = size.width;
  v71 = *MEMORY[0x1E69E9840];
  styleCopy = style;
  formatCopy = format;
  v14 = formatCopy;
  if (styleCopy)
  {
    if (formatCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICStoreArtworkInfo.m" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"cropStyle != nil"}];

    if (v14)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"ICStoreArtworkInfo.m" lineNumber:279 description:{@"Invalid parameter not satisfying: %@", @"format != nil"}];

LABEL_3:
  v15 = ceil(width);
  v16 = ceil(height);
  sizeInfo = [(ICStoreArtworkInfo *)self sizeInfo];
  type = [sizeInfo type];
  if (type == 2)
  {
    v64 = styleCopy;
    sortedResponseArray = [(ICStoreArtworkInfo *)self sortedResponseArray];
    lastObject = [sortedResponseArray lastObject];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v25 = sortedResponseArray;
    v26 = [v25 countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v67;
      v29 = 1.79769313e308;
      v30 = 1.79769313e308;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v67 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v32 = *(*(&v66 + 1) + 8 * i);
          v33 = [v32 objectForKey:@"width"];
          v34 = [v32 objectForKey:@"height"];
          if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
          {
            [v33 doubleValue];
            v36 = v35;
            [v34 doubleValue];
            v38 = v36 >= v30 || v36 < width;
            v39 = !v38 && v37 < v29;
            if (v39 && v37 >= height)
            {
              v41 = v37;
              v42 = v32;

              v29 = v41;
              v30 = v36;
              lastObject = v42;
            }
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v27);
    }

    styleCopy = v64;
    v20 = lastObject;
  }

  else
  {
    if (type != 1)
    {
      if (type)
      {
        v20 = 0;
        artworkURL = 0;
      }

      else
      {
        artworkURL = [(ICStoreArtworkInfo *)self artworkURL];
        v20 = 0;
      }

      goto LABEL_55;
    }

    v20 = self->_responseDictionary;
    if ([sizeInfo hasMaxSupportedSize])
    {
      [sizeInfo maxSupportedSize];
      if (width < v21)
      {
        v21 = width;
      }

      v15 = ceil(v21);
      if (height >= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = height;
      }

      v16 = ceil(v23);
    }
  }

  v43 = [(NSDictionary *)v20 objectForKey:@"url"];
  v44 = [v43 mutableCopy];

  v45 = [v44 rangeOfString:@"{w}" options:5];
  if (v45 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = v46;
    if (v46)
    {
      v48 = v45;
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v15];
      [v44 replaceCharactersInRange:v48 withString:{v47, v49}];
    }
  }

  v50 = [v44 rangeOfString:@"{h}" options:5];
  if (v50 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v52 = v51;
    if (v51)
    {
      v53 = v50;
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v16];
      [v44 replaceCharactersInRange:v53 withString:{v52, v54}];
    }
  }

  v55 = [v44 rangeOfString:@"{c}" options:5];
  if (v55 != 0x7FFFFFFFFFFFFFFFLL && v56)
  {
    [v44 replaceCharactersInRange:v55 withString:{v56, styleCopy}];
  }

  v57 = [v44 rangeOfString:@"{f}" options:5];
  if (v57 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v58)
    {
      v59 = v57;
      [v44 replaceCharactersInRange:v57 withString:{v58, v14}];
      if (spaceCopy)
      {
        v60 = [(NSDictionary *)v20 objectForKey:@"hasP3"];
        if ([v60 BOOLValue])
        {
          [v44 insertString:@"-P3" atIndex:v59 - 1];
        }
      }
    }
  }

  if ([v44 length])
  {
    artworkURL = [MEMORY[0x1E695DFF8] URLWithString:v44];
  }

  else
  {
    artworkURL = 0;
  }

LABEL_55:

  return artworkURL;
}

- (NSURL)artworkURL
{
  artworkURL = self->_artworkURL;
  if (artworkURL)
  {
    v4 = [(NSURL *)artworkURL copy];
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  if (self->_responseDictionary)
  {
    [(ICStoreArtworkInfo *)self originalSize];
    v4 = [(ICStoreArtworkInfo *)self artworkURLWithSize:@"sr" cropStyle:@"jpg" format:?];
    goto LABEL_5;
  }

  if (self->_responseArray)
  {
    sizeInfo = [(ICStoreArtworkInfo *)self sizeInfo];
    [sizeInfo maxSupportedSize];
    v5 = [(ICStoreArtworkInfo *)self artworkURLWithSize:@"sr" cropStyle:@"jpg" format:?];
  }

  else
  {
    v5 = 0;
  }

LABEL_6:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  responseArray = self->_responseArray;
  coderCopy = coder;
  [coderCopy encodeObject:responseArray forKey:@"responseArray"];
  [coderCopy encodeObject:self->_responseDictionary forKey:@"responseDictionary"];
  [coderCopy encodeObject:self->_artworkURL forKey:@"artworkURL"];
}

- (ICStoreArtworkInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodePropertyListForKey:@"responseArray"];
  if (v5)
  {
    self = [(ICStoreArtworkInfo *)self initWithArtworkResponseArray:v5];
    selfCopy3 = self;
  }

  else
  {
    v7 = [coderCopy decodePropertyListForKey:@"responseDictionary"];
    if (v7)
    {
      self = [(ICStoreArtworkInfo *)self initWithArtworkResponseDictionary:v7];
      selfCopy3 = self;
    }

    else
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artworkURL"];
      if (v8)
      {
        self = [(ICStoreArtworkInfo *)self initWithArtworkURL:v8];
        selfCopy3 = self;
      }

      else
      {
        selfCopy3 = 0;
      }
    }
  }

  return selfCopy3;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v3 ^ 0x6C7967656E657261;
  v8 = v4 ^ 0x646F72616E646F6DLL;
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v10 hash];
  v12 = v5 ^ 0x7465646279746573 ^ v11;
  v13 = (v6 + v8) ^ __ROR8__(v8, 51);
  v14 = v7 + v12;
  v15 = (v7 + v12) ^ __ROR8__(v12, 48);
  v16 = v15 + __ROR8__(v6 + v8, 32);
  v87 = __ROR8__(v14 + v13, 32);
  v92 = v16 ^ __ROR8__(v15, 43);
  v17 = v16 ^ v11;
  v82 = (v14 + v13) ^ __ROR8__(v13, 47);

  v18 = self->_sizeInfo;
  v19 = [(ICStoreArtworkSizeInfo *)v18 hash];
  v20 = (v17 + v82) ^ __ROR8__(v82, 51);
  v21 = v87 + (v92 ^ v19);
  v22 = __ROR8__(v92 ^ v19, 48);
  v23 = (v21 ^ v22) + __ROR8__(v17 + v82, 32);
  v24 = v23 ^ __ROR8__(v21 ^ v22, 43);
  v25 = v21 + v20;
  v88 = __ROR8__(v25, 32);
  v93 = v24;
  v78 = v23 ^ v19;
  v83 = v25 ^ __ROR8__(v20, 47);

  v26 = self->_artworkURL;
  data = [(NSURL *)v26 hash];
  v27 = (v78 + v83) ^ __ROR8__(v83, 51);
  v28 = v88 + (v93 ^ data);
  v29 = __ROR8__(v93 ^ data, 48);
  v30 = (v28 ^ v29) + __ROR8__(v78 + v83, 32);
  v31 = v30 ^ __ROR8__(v28 ^ v29, 43);
  v32 = v28 + v27;
  v89 = __ROR8__(v32, 32);
  v94 = v31;
  v79 = v30 ^ data;
  v84 = v32 ^ __ROR8__(v27, 47);

  v33 = self->_responseDictionary;
  v34 = [(NSDictionary *)v33 hash];
  v35 = (v79 + v84) ^ __ROR8__(v84, 51);
  v36 = v89 + (v94 ^ v34);
  v37 = __ROR8__(v94 ^ v34, 48);
  v38 = (v36 ^ v37) + __ROR8__(v79 + v84, 32);
  v39 = v38 ^ __ROR8__(v36 ^ v37, 43);
  v40 = v36 + v35;
  v90 = __ROR8__(v40, 32);
  v95 = v39;
  v80 = v38 ^ v34;
  v85 = v40 ^ __ROR8__(v35, 47);

  v41 = self->_responseArray;
  v42 = [(NSArray *)v41 hash];
  v43 = (v80 + v85) ^ __ROR8__(v85, 51);
  v44 = v90 + (v95 ^ v42);
  v45 = __ROR8__(v95 ^ v42, 48);
  v46 = (v44 ^ v45) + __ROR8__(v80 + v85, 32);
  v47 = v46 ^ __ROR8__(v44 ^ v45, 43);
  v48 = v44 + v43;
  v91 = __ROR8__(v48, 32);
  v96 = v47;
  v81 = v46 ^ v42;
  v86 = v48 ^ __ROR8__(v43, 47);

  v49 = (v81 + v86) ^ __ROR8__(v86, 51);
  v50 = v91 + (v96 ^ 0x2800000000000000);
  v51 = __ROR8__(v96 ^ 0x2800000000000000, 48);
  v52 = (v50 ^ v51) + __ROR8__(v81 + v86, 32);
  v53 = v52 ^ __ROR8__(v50 ^ v51, 43);
  v54 = v50 + v49;
  v55 = v54 ^ __ROR8__(v49, 47);
  v56 = (v52 ^ 0x2800000000000000) + v55;
  v57 = v56 ^ __ROR8__(v55, 51);
  v58 = (__ROR8__(v54, 32) ^ 0xFFLL) + v53;
  v59 = __ROR8__(v53, 48);
  v60 = __ROR8__(v56, 32) + (v58 ^ v59);
  v61 = v60 ^ __ROR8__(v58 ^ v59, 43);
  v62 = v57 + v58;
  v63 = v62 ^ __ROR8__(v57, 47);
  v64 = v63 + v60;
  v65 = v64 ^ __ROR8__(v63, 51);
  v66 = __ROR8__(v62, 32) + v61;
  v67 = __ROR8__(v61, 48);
  v68 = __ROR8__(v64, 32) + (v66 ^ v67);
  v69 = v68 ^ __ROR8__(v66 ^ v67, 43);
  v70 = v65 + v66;
  v71 = v70 ^ __ROR8__(v65, 47);
  v72 = v71 + v68;
  v73 = v72 ^ __ROR8__(v71, 51);
  v74 = __ROR8__(v70, 32) + v69;
  v75 = __ROR8__(v69, 48);
  v76 = __ROR8__(v72, 32) + (v74 ^ v75);
  return (v73 + v74) ^ __ROR8__(v73, 47) ^ v76 ^ __ROR8__(v73 + v74, 32) ^ v76 ^ __ROR8__(v74 ^ v75, 43);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    if ([(ICStoreArtworkInfo *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v5 = equalCopy;
      sizeInfo = [(ICStoreArtworkInfo *)self sizeInfo];
      sizeInfo2 = [(ICStoreArtworkInfo *)v5 sizeInfo];
      v8 = sizeInfo2;
      if (sizeInfo == sizeInfo2)
      {
      }

      else
      {
        v9 = [sizeInfo isEqual:sizeInfo2];

        if ((v9 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      artworkURL = [(ICStoreArtworkInfo *)self artworkURL];
      artworkURL2 = [(ICStoreArtworkInfo *)v5 artworkURL];
      v13 = artworkURL2;
      if (artworkURL == artworkURL2)
      {
      }

      else
      {
        v14 = [artworkURL isEqual:artworkURL2];

        if ((v14 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      responseDictionary = [(ICStoreArtworkInfo *)self responseDictionary];
      responseDictionary2 = [(ICStoreArtworkInfo *)v5 responseDictionary];
      v17 = responseDictionary2;
      if (responseDictionary == responseDictionary2)
      {
      }

      else
      {
        v18 = [responseDictionary isEqual:responseDictionary2];

        if ((v18 & 1) == 0)
        {
LABEL_15:
          v10 = 0;
LABEL_21:

          goto LABEL_22;
        }
      }

      responseArray = [(ICStoreArtworkInfo *)self responseArray];
      responseArray2 = [(ICStoreArtworkInfo *)v5 responseArray];
      if (responseArray == responseArray2)
      {
        v10 = 1;
      }

      else
      {
        v10 = [responseArray isEqual:responseArray2];
      }

      goto LABEL_21;
    }

    v10 = 0;
  }

LABEL_22:

  return v10;
}

- (ICStoreArtworkInfo)initWithArtworkResponseValue:(id)value
{
  valueCopy = value;
  if (_NSIsNSDictionary())
  {
    v5 = [(ICStoreArtworkInfo *)self initWithArtworkResponseDictionary:valueCopy];
LABEL_5:
    self = v5;
    selfCopy2 = self;
    goto LABEL_6;
  }

  if (_NSIsNSArray())
  {
    v5 = [(ICStoreArtworkInfo *)self initWithArtworkResponseArray:valueCopy];
    goto LABEL_5;
  }

  if (_NSIsNSString())
  {
    v8 = [MEMORY[0x1E695DFF8] URLWithString:valueCopy];
    if (v8)
    {
      self = [(ICStoreArtworkInfo *)self initWithArtworkURL:v8];
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

LABEL_6:

  return selfCopy2;
}

- (ICStoreArtworkInfo)initWithArtworkURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = ICStoreArtworkInfo;
  v5 = [(ICStoreArtworkInfo *)&v11 init];
  if (v5)
  {
    v6 = [lCopy copy];
    artworkURL = v5->_artworkURL;
    v5->_artworkURL = v6;

    v8 = objc_alloc_init(ICStoreArtworkSizeInfo);
    sizeInfo = v5->_sizeInfo;
    v5->_sizeInfo = v8;

    [(ICStoreArtworkSizeInfo *)v5->_sizeInfo setType:0];
  }

  return v5;
}

- (ICStoreArtworkInfo)initWithArtworkResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"url"];
  if (_NSIsNSString())
  {
    v18.receiver = self;
    v18.super_class = ICStoreArtworkInfo;
    v6 = [(ICStoreArtworkInfo *)&v18 init];
    if (v6)
    {
      v7 = [dictionaryCopy copy];
      responseDictionary = v6->_responseDictionary;
      v6->_responseDictionary = v7;

      v9 = objc_alloc_init(ICStoreArtworkSizeInfo);
      sizeInfo = v6->_sizeInfo;
      v6->_sizeInfo = v9;

      [(ICStoreArtworkSizeInfo *)v6->_sizeInfo setType:1];
      if ([(ICStoreArtworkInfo *)v6 _hasOriginalSize])
      {
        [(ICStoreArtworkInfo *)v6 originalSize];
        v13 = v12;
        v14 = v11;
        if (v12 != *MEMORY[0x1E695F060] || v11 != *(MEMORY[0x1E695F060] + 8))
        {
          [(ICStoreArtworkSizeInfo *)v6->_sizeInfo setHasMaxSupportedSize:1];
          [(ICStoreArtworkSizeInfo *)v6->_sizeInfo setMaxSupportedSize:v13, v14];
        }
      }
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ICStoreArtworkInfo)initWithArtworkResponseArray:(id)array
{
  v24 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [arrayCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if (_NSIsNSDictionary())
        {
          v11 = [v10 objectForKey:@"url"];
          if (_NSIsNSString())
          {
            if (!v7)
            {
              v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
            }

            [v7 addObject:v10];
          }
        }
      }

      v6 = [arrayCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if ([v7 count])
  {
    v18.receiver = self;
    v18.super_class = ICStoreArtworkInfo;
    v12 = [(ICStoreArtworkInfo *)&v18 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_responseArray, v7);
      [(ICStoreArtworkInfo *)v13 _sortResponseArray];
      [(ICStoreArtworkInfo *)v13 _sortSupportedSizesArray];
      v14 = objc_alloc_init(ICStoreArtworkSizeInfo);
      sizeInfo = v13->_sizeInfo;
      v13->_sizeInfo = v14;

      [(ICStoreArtworkSizeInfo *)v13->_sizeInfo setType:2];
      [(ICStoreArtworkSizeInfo *)v13->_sizeInfo setSupportedSizes:v13->_sortedSupportedSizesArray];
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end