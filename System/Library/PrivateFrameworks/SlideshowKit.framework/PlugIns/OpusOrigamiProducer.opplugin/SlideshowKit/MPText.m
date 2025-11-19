@interface MPText
+ (MPText)textWithAttributedString:(id)a3;
- (BOOL)isOriginal;
- (MPText)init;
- (MPText)initWithAttributedString:(id)a3;
- (double)displayDuration;
- (double)displayStartTime;
- (double)displayTime;
- (double)maxFontSize;
- (double)textAreaAspectRatio;
- (id)action;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultString;
- (id)nearestPlug;
- (id)plainString;
- (id)subtitleSlide;
- (int64_t)index;
- (void)checkForMaxFontSize;
- (void)checkForPlacesLabel;
- (void)copyStruct:(id)a3;
- (void)dealloc;
- (void)setAttributedString:(id)a3;
- (void)setParent:(id)a3;
- (void)setPlainString:(id)a3;
- (void)setText:(id)a3;
@end

@implementation MPText

+ (MPText)textWithAttributedString:(id)a3
{
  v3 = [[a1 alloc] initWithAttributedString:a3];

  return v3;
}

- (MPText)initWithAttributedString:(id)a3
{
  v4 = [(MPText *)self init];
  v5 = v4;
  if (v4)
  {
    [(MPTextInternal *)v4->_internal setAttributedString:a3];
  }

  return v5;
}

- (MPText)init
{
  v5.receiver = self;
  v5.super_class = MPText;
  v2 = [(MPText *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MPTextInternal);
    v2->_internal = v3;
    [(MPTextInternal *)v3 setAttributedString:0];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 copyStruct:self->_internal];
  return v4;
}

- (void)dealloc
{
  text = self->_text;
  if (text)
  {

    self->_text = 0;
  }

  self->_internal = 0;
  v4.receiver = self;
  v4.super_class = MPText;
  [(MPText *)&v4 dealloc];
}

- (void)setAttributedString:(id)a3
{
  if (([a3 isEqualToAttributedString:{-[MPTextInternal attributedString](self->_internal, "attributedString")}] & 1) == 0)
  {
    if ([(MPText *)self parentEffect])
    {
      v5 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
      v6 = [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
    }

    else
    {
      v5 = 0;
      v6 = 1;
    }

    v7 = [[NSMutableAttributedString alloc] initWithAttributedString:a3];
    v8 = v7;
    if (v5)
    {
      [v7 replaceCharactersInRange:0 withString:{objc_msgSend(v7, "length"), objc_msgSend(objc_msgSend(v7, "string"), "uppercaseString")}];
    }

    if ((v6 & 1) == 0)
    {
      v9 = [[NSMutableAttributedString alloc] initWithAttributedString:{-[MPText defaultString](self, "defaultString")}];
      [v9 replaceCharactersInRange:0 withString:{objc_msgSend(v9, "length"), objc_msgSend(v8, "string")}];

      v8 = v9;
    }

    [(MPTextInternal *)self->_internal setAttributedString:v8];

    [(MPText *)self checkForMaxFontSize];
    [(MPText *)self checkForPlacesLabel];
    if (self->_text)
    {
      v10 = [(MPTextInternal *)self->_internal attributedString];
      text = self->_text;

      [(MCText *)text setAttributedString:v10];
    }
  }
}

- (id)subtitleSlide
{
  v2 = [-[MPText parentEffect](self "parentEffect")];
  v3 = [v2 parentLayer];
  v4 = [+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v4 == &dword_0 + 2)
  {
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [objc_msgSend(v3 objectInEffectContainersAtIndex:{objc_msgSend(v2, "index") + 1), "effects"}];
    result = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
    if (result)
    {
      v11 = result;
      v12 = *v24;
LABEL_14:
      v13 = 0;
      while (1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        if ([v14 countOfSlides] >= 1)
        {
          result = [objc_msgSend(v14 "slides")];
          if (result)
          {
            break;
          }
        }

        if (v11 == ++v13)
        {
          v11 = [v10 countByEnumeratingWithState:&v23 objects:v32 count:16];
          result = 0;
          if (v11)
          {
            goto LABEL_14;
          }

          return result;
        }
      }
    }
  }

  else if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = [objc_msgSend(v3 objectInEffectContainersAtIndex:{objc_msgSend(v2, "index") - 1), "effects", 0}];
    result = [v15 countByEnumeratingWithState:&v19 objects:v31 count:16];
    if (result)
    {
      v16 = result;
      v17 = *v20;
LABEL_24:
      v18 = 0;
      while (1)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v15);
        }

        result = [objc_msgSend(*(*(&v19 + 1) + 8 * v18) "slides")];
        if (result)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v15 countByEnumeratingWithState:&v19 objects:v31 count:16];
          result = 0;
          if (v16)
          {
            goto LABEL_24;
          }

          return result;
        }
      }
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = [v2 effects];
    result = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (result)
    {
      v7 = result;
      v8 = *v28;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        result = [objc_msgSend(*(*(&v27 + 1) + 8 * v9) "slides")];
        if (result)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
          result = 0;
          if (v7)
          {
            goto LABEL_5;
          }

          return result;
        }
      }
    }
  }

  return result;
}

- (int64_t)index
{
  parent = self->_parent;
  if (!parent)
  {
    return -1;
  }

  if (self->_text)
  {
    text = self->_text;

    return [(MCText *)text index];
  }

  else
  {
    v6 = [(MPEffectSupport *)parent texts];

    return [v6 indexOfObject:self];
  }
}

- (double)displayTime
{
  v3 = 0.0;
  if ([objc_msgSend(-[MPText parentEffect](self "parentEffect")])
  {
    v4 = NSRangeFromString([-[MPText parentEffect](self "parentEffect")]);
    v5 = [objc_msgSend(-[MPText parentEffect](self "parentEffect")];
    if ([(MPText *)self index]| v4.location)
    {
      if ([(MPText *)self index]>= 1)
      {
        [objc_msgSend(-[MPText parentEffect](self "parentEffect")];
        v8 = v7;
        [objc_msgSend(objc_msgSend(v5 objectAtIndex:{-[MPText index](self, "index") - 1), "objectForKey:", @"pinStart", "doubleValue"}];
        v10 = v9 - v8 + -2.35;
        [-[MPText parentEffect](self "parentEffect")];
        return v10 + v11;
      }
    }

    else
    {
      [-[MPText parentEffect](self "parentEffect")];
      return v6 + 2.3;
    }
  }

  return v3;
}

- (double)displayStartTime
{
  v3 = 0.0;
  if ([objc_msgSend(-[MPText parentEffect](self "parentEffect")])
  {
    v4 = NSRangeFromString([-[MPText parentEffect](self "parentEffect")]);
    v5 = [objc_msgSend(-[MPText parentEffect](self "parentEffect")];
    if ([(MPText *)self index]| v4.location)
    {
      if ([(MPText *)self index]>= 1)
      {
        [objc_msgSend(-[MPText parentEffect](self "parentEffect")];
        v8 = v7;
        [objc_msgSend(objc_msgSend(v5 objectAtIndex:{-[MPText index](self, "index") - 1), "objectForKey:", @"pinStart", "doubleValue"}];
        v10 = v9 - v8 + -2.35;
        [-[MPText parentEffect](self "parentEffect")];
        return v10 + v11;
      }
    }

    else
    {
      [-[MPText parentEffect](self "parentEffect")];
      return v6 + 0.25;
    }
  }

  return v3;
}

- (double)displayDuration
{
  if (![objc_msgSend(-[MPText parentEffect](self "parentEffect")])
  {
    return 0.0;
  }

  location = NSRangeFromString([-[MPText parentEffect](self "parentEffect")]).location;
  v4 = [(MPText *)self index];
  result = 3.75;
  if (v4 | location)
  {
    v6 = [(MPText *)self index];
    result = 2.75;
    if (v6 <= 0)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)textAreaAspectRatio
{
  v2 = [(MPText *)self parentEffect];
  if (v2)
  {
    v3 = v2;
    v4 = 1.0;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        return v4;
      }

      if ([v3 conformsToProtocol:&OBJC_PROTOCOL___MPGeometrySupport])
      {
        [v3 size];
        v6 = v5;
        [v3 size];
        v4 = v4 * (v6 / v7);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = [v3 parentContainer];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v3 parentLayer];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_16;
              }
            }
          }
        }

        v8 = [v3 parent];
      }

      v3 = v8;
LABEL_16:
      if (!v3)
      {
        return v4;
      }
    }
  }

  return 1.0;
}

- (id)defaultString
{
  v3 = [(MPText *)self parentEffect];
  v4 = +[MPEffectManager sharedManager];
  v5 = [v3 effectID];
  v6 = [v3 presetID];
  v7 = [(MPText *)self index];

  return [v4 defaultStringForTextInEffectID:v5 presetID:v6 atIndex:v7];
}

- (double)maxFontSize
{
  v3 = [(MPText *)self parentEffect];
  v4 = +[MPEffectManager sharedManager];
  v5 = [v3 effectID];
  v6 = [v3 presetID];
  v7 = [(MPText *)self index];

  [v4 maxFontSizeInEffectID:v5 presetID:v6 atIndex:v7];
  return result;
}

- (BOOL)isOriginal
{
  v3 = [(MPEffectSupport *)self->_parent parentDocument];
  if (v3)
  {
    v4 = v3;
    LODWORD(v3) = [objc_msgSend(-[MPText parentEffect](self "parentEffect")];
    if (v3)
    {
      v5 = [v4 authoringOptionForKey:kMPAuthoringPlaceLabels];
      v6 = NSRangeFromString([-[MPText parentEffect](self "parentEffect")]);
      v7 = [-[MPText parentEffect](self "parentEffect")];
      v8 = [v7 objectsAtIndexes:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v6.location, v6.length)}];
      if ([(MPText *)self index]| v6.location)
      {
        if ([(MPText *)self index]< 1)
        {
LABEL_33:
          LOBYTE(v3) = 0;
          return v3;
        }

        v18 = [objc_msgSend(v8 objectAtIndex:{-[MPText index](self, "index") - 1), "objectForKey:", @"photos"}];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v19 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v32;
          LOBYTE(v22) = 1;
LABEL_24:
          v23 = 0;
          while (1)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v24 = [objc_msgSend(v5 objectForKey:{*(*(&v31 + 1) + 8 * v23)), "objectForKey:", @"pinLabel"}];
            v25 = [v24 isEqualToAttributedString:{-[MPText attributedString](self, "attributedString")}];
            if (v25)
            {
              break;
            }

            v22 = (v24 == 0) & v22;
            if (v20 == ++v23)
            {
              v26 = v25;
              v20 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
              if (v20)
              {
                goto LABEL_24;
              }

              if (((v26 | v22) & 1) == 0)
              {
                goto LABEL_33;
              }

              break;
            }
          }
        }
      }

      else
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v30 = [v7 countByEnumeratingWithState:&v39 objects:v45 count:16];
        if (v30)
        {
          v9 = *v40;
          v10 = 1;
          v28 = *v40;
          v29 = v7;
          while (2)
          {
            for (i = 0; i != v30; i = i + 1)
            {
              if (*v40 != v9)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [*(*(&v39 + 1) + 8 * i) objectForKey:@"photos"];
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v38 = 0u;
              v13 = [v12 countByEnumeratingWithState:&v35 objects:v44 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v36;
LABEL_11:
                v16 = 0;
                while (1)
                {
                  if (*v36 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = [objc_msgSend(v5 objectForKey:{*(*(&v35 + 1) + 8 * v16)), "objectForKey:", @"mapLabel"}];
                  if ([v17 isEqualToAttributedString:{-[MPText attributedString](self, "attributedString")}])
                  {
                    goto LABEL_31;
                  }

                  v10 &= v17 == 0;
                  if (v14 == ++v16)
                  {
                    v14 = [v12 countByEnumeratingWithState:&v35 objects:v44 count:16];
                    if (v14)
                    {
                      goto LABEL_11;
                    }

                    break;
                  }
                }
              }

              v7 = v29;
              v9 = v28;
            }

            v30 = [v29 countByEnumeratingWithState:&v39 objects:v45 count:16];
            if (v30)
            {
              continue;
            }

            break;
          }

          if ((v10 & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

LABEL_31:
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (id)plainString
{
  v2 = [(MCText *)self->_text attributedString];

  return [(NSAttributedString *)v2 string];
}

- (void)setPlainString:(id)a3
{
  v5 = [[NSMutableAttributedString alloc] initWithAttributedString:{-[MPText attributedString](self, "attributedString")}];
  [v5 replaceCharactersInRange:0 withString:{objc_msgSend(v5, "length"), a3}];
  [(MPText *)self setAttributedString:v5];
}

- (id)action
{
  v3 = [-[MPText parentEffect](self "parentEffect")];
  v4 = [NSString stringWithFormat:@"text%d", [(MPText *)self index]];

  return [v3 actionForKey:v4];
}

- (void)copyStruct:(id)a3
{
  v4 = [objc_msgSend(a3 "attributedString")];
  internal = self->_internal;

  [(MPTextInternal *)internal setAttributedString:v4];
}

- (id)nearestPlug
{
  v2 = [(MPText *)self parentEffect];

  return [v2 nearestPlug];
}

- (void)setText:(id)a3
{
  text = self->_text;
  if (text)
  {

    self->_text = 0;
  }

  v6 = a3;
  self->_text = v6;
  if (v6)
  {
    v7 = [(MPTextInternal *)self->_internal attributedString];
    v8 = self->_text;

    [(MCText *)v8 setAttributedString:v7];
  }
}

- (void)setParent:(id)a3
{
  if (a3 && self->_parent)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"A text may one have one parent.  Please remove it first.  This is unsupported." userInfo:0, v3, v4]);
  }

  self->_parent = a3;

  [(MPText *)self checkForMaxFontSize];
}

- (void)checkForPlacesLabel
{
  v3 = [(MPEffectSupport *)self->_parent parentDocument];
  if (v3)
  {
    v4 = v3;
    if ([objc_msgSend(-[MPText parentEffect](self "parentEffect")])
    {
      v24 = v4;
      v5 = [objc_msgSend(v4 authoringOptionForKey:{kMPAuthoringPlaceLabels), "mutableCopy"}];
      if (!v5)
      {
        v5 = objc_alloc_init(NSMutableDictionary);
      }

      v6 = NSRangeFromString([-[MPText parentEffect](self "parentEffect")]);
      v7 = [-[MPText parentEffect](self "parentEffect")];
      v8 = [v7 objectsAtIndexes:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v6.location, v6.length)}];
      if ([(MPText *)self index]| v6.location)
      {
        if ([(MPText *)self index]>= 1)
        {
          v17 = [objc_msgSend(v8 objectAtIndex:{-[MPText index](self, "index") - 1), "objectForKey:", @"photos"}];
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v18 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v30;
            do
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v30 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v29 + 1) + 8 * i);
                v23 = [objc_msgSend(v5 objectForKey:{v22), "mutableCopy"}];
                if (!v23)
                {
                  v23 = objc_alloc_init(NSMutableDictionary);
                }

                [v23 setObject:-[MPText attributedString](self forKey:{"attributedString"), @"pinLabel"}];
                [v5 setObject:v23 forKey:v22];
              }

              v19 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
            }

            while (v19);
          }
        }
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        obj = v7;
        v27 = [v7 countByEnumeratingWithState:&v37 objects:v43 count:16];
        if (v27)
        {
          v26 = *v38;
          do
          {
            v9 = 0;
            do
            {
              if (*v38 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v28 = v9;
              v10 = [*(*(&v37 + 1) + 8 * v9) objectForKey:@"photos"];
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v11 = [v10 countByEnumeratingWithState:&v33 objects:v42 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v34;
                do
                {
                  for (j = 0; j != v12; j = j + 1)
                  {
                    if (*v34 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v15 = *(*(&v33 + 1) + 8 * j);
                    v16 = [objc_msgSend(v5 objectForKey:{v15), "mutableCopy"}];
                    if (!v16)
                    {
                      v16 = objc_alloc_init(NSMutableDictionary);
                    }

                    [v16 setObject:-[MPText attributedString](self forKey:{"attributedString"), @"mapLabel"}];
                    [v5 setObject:v16 forKey:v15];
                  }

                  v12 = [v10 countByEnumeratingWithState:&v33 objects:v42 count:16];
                }

                while (v12);
              }

              v9 = v28 + 1;
            }

            while ((v28 + 1) != v27);
            v27 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
          }

          while (v27);
        }
      }

      [v24 setAuthoringOption:v5 forKey:kMPAuthoringPlaceLabels];
    }
  }
}

- (void)checkForMaxFontSize
{
  if (self->_parent)
  {
    if ([(MPTextInternal *)self->_internal attributedString])
    {
      [+[MPEffectManager sharedManager](MPEffectManager "sharedManager")];
      if (v3 >= 0.0)
      {
        v4 = v3;
        v5 = [(NSAttributedString *)[(MPTextInternal *)self->_internal attributedString] mutableCopy];
        v6 = [v5 length];
        v13 = 0;
        v14 = 0;
        if (v6 >= 1)
        {
          v7 = v6;
          v8 = 0;
          for (i = 0; i < v7; i += v14)
          {
            v10 = [v5 attribute:kCTFontAttributeName atIndex:i effectiveRange:&v13];
            if (CTFontGetSize(v10) > v4)
            {
              v11 = CTFontCopyPostScriptName(v10);
              v12 = CTFontCreateWithName(v11, v4, 0);
              CFRelease(v11);
              if (v12)
              {
                [v5 addAttribute:kCTFontAttributeName value:v12 range:{v13, v14}];
                CFRelease(v12);
              }

              v8 = 1;
            }
          }

          if (v8)
          {
            [(MPTextInternal *)self->_internal setAttributedString:v5];
          }
        }
      }
    }
  }
}

@end