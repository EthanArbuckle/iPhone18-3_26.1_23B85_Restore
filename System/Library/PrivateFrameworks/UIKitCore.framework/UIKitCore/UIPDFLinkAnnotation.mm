@interface UIPDFLinkAnnotation
- (BOOL)shouldRecognizeTapOrPress:(CGPoint)a3;
- (CGRect)linkRectangle;
- (id)newBaseURL;
- (id)url;
- (unint64_t)getDestination:(CGPDFDictionary *)a3;
- (unint64_t)getNamedDestination:(CGPDFDictionary *)a3;
- (unint64_t)pageNumber;
@end

@implementation UIPDFLinkAnnotation

- (id)newBaseURL
{
  result = [(UIPDFDocument *)[[(UIPDFPageView *)[(UIPDFAnnotationController *)self->super.super._annotationController pageView] page] document] CGDocument];
  if (result)
  {
    result = CGPDFDocumentGetCatalog(result);
    if (result)
    {
      value = 0;
      Dictionary = CGPDFDictionaryGetDictionary(result, "URI", &value);
      result = 0;
      if (Dictionary)
      {
        string = 0;
        if (CGPDFDictionaryGetString(value, "Base", &string))
        {
          result = CGPDFStringGetBytePtr(string);
          if (result)
          {
            v4 = result;
            result = CGPDFStringGetLength(string);
            if (result)
            {
              return [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:v4 encoding:30];
            }
          }
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

- (unint64_t)getDestination:(CGPDFDictionary *)a3
{
  value = 0;
  if (!CGPDFDictionaryGetObject(a3, "D", &value) && !CGPDFDictionaryGetObject(a3, "Dest", &value))
  {
    return 0;
  }

  Type = CGPDFObjectGetType(value);
  array = 0;
  if (Type == kCGPDFObjectTypeArray)
  {
    v6 = CGPDFObjectGetValue(value, kCGPDFObjectTypeArray, &array);
    result = 0;
    if (!v6 || !array)
    {
      return result;
    }

    goto LABEL_17;
  }

  if ((Type - 5) > 1)
  {
    return 0;
  }

  v22 = 0;
  [(UIPDFDocument *)[[(UIPDFPageView *)[(UIPDFAnnotationController *)self->super.super._annotationController pageView] page] document] CGDocument];
  Destination = CGPDFDocumentGetDestination();
  object = Destination;
  if (Destination)
  {
    v9 = Destination;
    v10 = CGPDFObjectGetType(Destination);
    if (v10 == kCGPDFObjectTypeDictionary)
    {
      if (!CGPDFObjectGetValue(v9, kCGPDFObjectTypeDictionary, &v22) || CGPDFDictionaryGetObject(v22, "D", &object) && !CGPDFObjectGetValue(object, kCGPDFObjectTypeArray, &array))
      {
        return 0;
      }
    }

    else if (v10 == kCGPDFObjectTypeArray && !CGPDFObjectGetValue(v9, kCGPDFObjectTypeArray, &array))
    {
      return 0;
    }
  }

  if (!array)
  {
    return 0;
  }

LABEL_17:
  v11 = [(UIPDFAnnotationController *)self->super.super._annotationController pageView];
  v12 = [(UIPDFDocument *)[[(UIPDFPageView *)v11 page] document] numberOfPages];
  result = CGPDFArrayGetCount(array);
  if (!result)
  {
    return result;
  }

  v18 = 0;
  if (CGPDFArrayGetDictionary(array, 0, &v18))
  {
    v13 = [(UIPDFDocument *)[[(UIPDFPageView *)v11 page] document] CGDocument];
    v14 = v18;
    v22 = 0;
    Catalog = CGPDFDocumentGetCatalog(v13);
    CGPDFDictionaryGetDictionary(Catalog, "Pages", &v22);
    object = 0;
    result = indexOfDictionary(v22, &object, v14);
  }

  else
  {
    v22 = 0;
    Integer = CGPDFArrayGetInteger(array, 0, &v22);
    result = 0;
    if (!Integer)
    {
      return result;
    }

    result = v22;
  }

  if (result > v12 || result < 1)
  {
    return 0;
  }

  return result;
}

- (unint64_t)getNamedDestination:(CGPDFDictionary *)a3
{
  value = 0;
  Name = CGPDFDictionaryGetName(a3, "N", &value);
  result = 0;
  if (Name)
  {
    v6 = [(UIPDFAnnotationController *)self->super.super._annotationController pageView];
    v7 = [(UIPDFDocument *)[(UIPDFPageView *)v6 document] numberOfPages];
    v8 = [[(UIPDFPageView *)v6 page] pageNumber];
    v9 = value;
    if (!strcmp(value, "NextPage"))
    {
      if (!strcmp(v9, "PrevPage"))
      {
        if (!strcmp(v9, "FirstPage"))
        {
          if (!strcmp(v9, "LastPage"))
          {
            v10 = 0;
          }

          else
          {
            v10 = v7;
          }
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = v8 - 1;
      }
    }

    else
    {
      v10 = v8 + 1;
    }

    if (v10 > v7 || v10 < 0)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

- (id)url
{
  value = 0;
  Dictionary = CGPDFDictionaryGetDictionary(self->super.super._dictionary, "A", &value);
  result = 0;
  if (Dictionary)
  {
    __s1 = 0;
    Name = CGPDFDictionaryGetName(value, "S", &__s1);
    result = 0;
    if (Name)
    {
      v6 = [(UIPDFLinkAnnotation *)self newBaseURL];
      v7 = v6;
      if (v6 && [v6 length])
      {
        v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v7 encodingInvalidCharacters:0];
      }

      else
      {
        v8 = 0;
      }

      if (!strcmp(__s1, "URI"))
      {
        string = 0;
        if (!CGPDFDictionaryGetString(value, "URI", &string))
        {

          return 0;
        }

        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:CGPDFStringGetBytePtr(string)];
        v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v10 encodingInvalidCharacters:0];
        if (![v9 baseURL] && v8)
        {

          v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v10 relativeToURL:v8];
        }

        if (![v9 scheme])
        {
          if ([v10 hasPrefix:@"www."])
          {

            v11 = objc_alloc(MEMORY[0x1E695DFF8]);
            v9 = [v11 initWithString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"http://%@", v10)}];
          }
        }
      }

      else
      {
        v9 = 0;
      }

      return v9;
    }
  }

  return result;
}

- (unint64_t)pageNumber
{
  value = 0;
  if (!CGPDFDictionaryGetDictionary(self->super.super._dictionary, "A", &value))
  {
    dictionary = self->super.super._dictionary;
    return [(UIPDFLinkAnnotation *)self getDestination:dictionary];
  }

  __s1 = 0;
  if (!CGPDFDictionaryGetName(value, "S", &__s1))
  {
    return 0;
  }

  v3 = __s1;
  if (!strcmp(__s1, "GoTo"))
  {
    dictionary = value;
    return [(UIPDFLinkAnnotation *)self getDestination:dictionary];
  }

  if (strcmp(v3, "Named"))
  {
    return 0;
  }

  return [(UIPDFLinkAnnotation *)self getNamedDestination:value];
}

- (CGRect)linkRectangle
{
  [(UIPDFAnnotation *)self Rect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIPDFAnnotationController *)self->super.super._annotationController pageView];

  [(UIPDFPageView *)v11 convertRectFromPDFPageSpace:v4, v6, v8, v10];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)shouldRecognizeTapOrPress:(CGPoint)a3
{
  v54[1] = *MEMORY[0x1E69E9840];
  dictionary = self->super.super._dictionary;
  if (dictionary)
  {
    y = a3.y;
    x = a3.x;
    value = 0;
    if (!CGPDFDictionaryGetArray(dictionary, "QuadPoints", &value) || (v7 = value, [(UIPDFAnnotation *)self Rect], ![(UIPDFLinkAnnotation *)self quadPoints:v7 within:?]) || ([(UIView *)[(UIPDFAnnotationController *)self->super.super._annotationController pageView] convertPoint:[(UIPDFAnnotation *)self annotationView] fromView:x, y], [(UIPDFPageView *)[(UIPDFAnnotationController *)self->super.super._annotationController pageView] convertPointToPDFPageSpace:v8, v9], v11 = v10, v13 = v12, Count = CGPDFArrayGetCount(value), (Count & 7) != 0))
    {
LABEL_5:
      LOBYTE(dictionary) = 1;
      return dictionary;
    }

    v15 = Count;
    if (Count >= 1)
    {
      v16 = 0;
      while (1)
      {
        CGPDFArrayGetNumber(value, v16, &v49);
        CGPDFArrayGetNumber(value, v16 | 1, &v50);
        CGPDFArrayGetNumber(value, v16 | 2, &v50 + 1);
        CGPDFArrayGetNumber(value, v16 | 3, &v51);
        CGPDFArrayGetNumber(value, v16 | 4, &v51 + 1);
        CGPDFArrayGetNumber(value, v16 | 5, &v52);
        CGPDFArrayGetNumber(value, v16 | 6, &v53);
        CGPDFArrayGetNumber(value, v16 | 7, v54);
        v17 = 0;
        v18 = v49;
        v43 = v49;
        v19 = *&v50;
        v44 = v50;
        v45 = v51;
        v20 = v53;
        v21 = v54[0];
        v46 = v52;
        v47 = v53;
        v22 = *&v50;
        v23 = v49;
        v48 = v54[0];
        do
        {
          v25 = *(&v44 + v17 + 8);
          v24 = *(&v45 + v17);
          if (v25 > v18)
          {
            v26 = *(&v44 + v17 + 8);
          }

          else
          {
            v26 = v18;
          }

          if (v25 >= v23)
          {
            v18 = v26;
          }

          else
          {
            v23 = *(&v44 + v17 + 8);
          }

          if (v24 >= v22)
          {
            if (v24 > v19)
            {
              v19 = *(&v45 + v17);
            }
          }

          else
          {
            v22 = *(&v45 + v17);
          }

          v17 += 16;
        }

        while (v17 != 48);
        v27 = v19 - v22;
        v28 = v18 - v23;
        v56.origin.x = v23;
        v56.origin.y = v22;
        v56.size.width = v28;
        v56.size.height = v27;
        if (!CGRectIsNull(v56))
        {
          v57.origin.x = v23;
          v57.origin.y = v22;
          v57.size.width = v28;
          v57.size.height = v27;
          v58 = CGRectInset(v57, -0.00000011920929, -0.00000011920929);
          v55.x = v11;
          v55.y = v13;
          if (CGRectContainsPoint(v58, v55))
          {
            break;
          }
        }

LABEL_40:
        LOBYTE(dictionary) = 0;
        v16 += 8;
        if (v16 >= v15)
        {
          return dictionary;
        }
      }

      v29 = 0;
      v30 = v20 - v11;
      v31 = v21 - v13;
      v32 = 0.0;
      while (1)
      {
        v33 = v30;
        v34 = v31;
        v30 = *(&v43 + v29) - v11;
        v31 = *(&v43 + v29 + 8) - v13;
        v35 = sqrt(v34 * v34 + v33 * v33);
        v36 = sqrt(v30 * v30 + v31 * v31);
        if (v35 < 0.00000011920929 || v36 < 0.00000011920929)
        {
          goto LABEL_5;
        }

        v38 = (v33 * v31 - v34 * v30) / v35 / v36;
        v39 = 1.57079633;
        if (v38 < 1.0)
        {
          if (v38 <= -1.0)
          {
            v39 = -1.57079633;
          }

          else
          {
            v39 = asin(v38);
          }
        }

        if (v33 * v30 + v34 * v31 < 0.0)
        {
          if (fabs(v39) < 0.00000011920929)
          {
            goto LABEL_5;
          }

          if (v39 <= 0.0)
          {
            v40 = -3.14159265;
          }

          else
          {
            v40 = 3.14159265;
          }

          v39 = v40 - v39;
        }

        v32 = v32 + v39;
        v29 += 16;
        if (v29 == 64)
        {
          if (fabs(v32) >= 3.14159265)
          {
            goto LABEL_5;
          }

          goto LABEL_40;
        }
      }
    }

    LOBYTE(dictionary) = 0;
  }

  return dictionary;
}

@end