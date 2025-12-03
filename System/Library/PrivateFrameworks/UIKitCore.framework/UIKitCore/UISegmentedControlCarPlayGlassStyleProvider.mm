@interface UISegmentedControlCarPlayGlassStyleProvider
- (id)fontColorForSegment:(id)segment enabled:(BOOL)enabled selected:(BOOL)selected state:(unint64_t)state;
- (id)highlightColorForSegmentSelected:(BOOL)selected highlighted:(BOOL)highlighted traitCollection:(id)collection tintColor:(id)color;
@end

@implementation UISegmentedControlCarPlayGlassStyleProvider

- (id)fontColorForSegment:(id)segment enabled:(BOOL)enabled selected:(BOOL)selected state:(unint64_t)state
{
  stateCopy = state;
  selectedCopy = selected;
  segmentCopy = segment;
  v9 = segmentCopy;
  if ((stateCopy & 8) != 0)
  {
    v11 = +[UIColor _carSystemFocusLabelColor];
  }

  else
  {
    if (selectedCopy)
    {
      traitCollection = [segmentCopy traitCollection];
      if ([traitCollection userInterfaceStyle] == 2)
      {
        +[UIColor whiteColor];
      }

      else
      {
        +[UIColor blackColor];
      }
      v12 = ;

      goto LABEL_10;
    }

    v11 = +[UIColor labelColor];
  }

  v12 = v11;
LABEL_10:

  return v12;
}

- (id)highlightColorForSegmentSelected:(BOOL)selected highlighted:(BOOL)highlighted traitCollection:(id)collection tintColor:(id)color
{
  highlightedCopy = highlighted;
  selectedCopy = selected;
  collectionCopy = collection;
  colorCopy = color;
  if (highlightedCopy)
  {
    v11 = +[UIColor _carSystemFocusColor];
LABEL_3:
    v12 = v11;
    goto LABEL_9;
  }

  if (selectedCopy)
  {
    if ([collectionCopy userInterfaceStyle] == 2)
    {
      +[UIColor secondarySystemFillColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v11 = ;
    goto LABEL_3;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

@end