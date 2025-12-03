@interface GQUOutputBundleFactory
+ (id)createOutputBundleForType:(int)type outputPath:(__CFString *)path progressiveHelper:(id)helper;
@end

@implementation GQUOutputBundleFactory

+ (id)createOutputBundleForType:(int)type outputPath:(__CFString *)path progressiveHelper:(id)helper
{
  if (type <= 1)
  {
    if (!type)
    {
      v12 = GQUQuicklookOutputBundle;
LABEL_18:

      return objc_alloc_init(v12);
    }

    if (type != 1)
    {
      return 0;
    }

    v8 = [GQUQuicklookOutputBundle alloc];
    v9 = off_9CBA0;

    return [(GQUQuicklookOutputBundle *)v8 initWithUriScheme:v9];
  }

  else
  {
    if (type != 2)
    {
      if (type != 3)
      {
        if (type == 4)
        {
          v6 = [GQUProgressiveOutputBundle alloc];

          return [(GQUProgressiveOutputBundle *)v6 initWithHandler:helper];
        }

        return 0;
      }

      v12 = GQUIglooOutputBundle;
      goto LABEL_18;
    }

    v11 = [GQUFileOutputBundle alloc];

    return [(GQUFileOutputBundle *)v11 initWithOutputPath:path];
  }
}

@end