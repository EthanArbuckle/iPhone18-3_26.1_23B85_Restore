@interface GQUOutputBundleFactory
+ (id)createOutputBundleForType:(int)a3 outputPath:(__CFString *)a4 progressiveHelper:(id)a5;
@end

@implementation GQUOutputBundleFactory

+ (id)createOutputBundleForType:(int)a3 outputPath:(__CFString *)a4 progressiveHelper:(id)a5
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      v12 = GQUQuicklookOutputBundle;
LABEL_18:

      return objc_alloc_init(v12);
    }

    if (a3 != 1)
    {
      return 0;
    }

    v8 = [GQUQuicklookOutputBundle alloc];
    v9 = off_9CBA0;

    return [(GQUQuicklookOutputBundle *)v8 initWithUriScheme:v9];
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
        if (a3 == 4)
        {
          v6 = [GQUProgressiveOutputBundle alloc];

          return [(GQUProgressiveOutputBundle *)v6 initWithHandler:a5];
        }

        return 0;
      }

      v12 = GQUIglooOutputBundle;
      goto LABEL_18;
    }

    v11 = [GQUFileOutputBundle alloc];

    return [(GQUFileOutputBundle *)v11 initWithOutputPath:a4];
  }
}

@end