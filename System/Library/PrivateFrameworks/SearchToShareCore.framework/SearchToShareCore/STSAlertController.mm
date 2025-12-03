@interface STSAlertController
+ (id)alertControllerWithTitle:(id)title message:(id)message preferredStyle:(int64_t)style;
+ (id)roundEdges:(id)edges;
- (void)viewDidLoad;
@end

@implementation STSAlertController

+ (id)alertControllerWithTitle:(id)title message:(id)message preferredStyle:(int64_t)style
{
  v11.receiver = self;
  v11.super_class = &OBJC_METACLASS___STSAlertController;
  v5 = objc_msgSendSuper2(&v11, sel_alertControllerWithTitle_message_preferredStyle_, title, message, style);
  v6 = MEMORY[0x277D755B8];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v6 imageNamed:@"alert-icon" inBundle:v7 withConfiguration:0];

  v9 = [STSAlertController roundEdges:v8];
  [v5 setImage:v9];

  return v5;
}

+ (id)roundEdges:(id)edges
{
  edgesCopy = edges;
  [edgesCopy size];
  v5 = v4;
  v7 = v6;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v10 = v9;
  v21.width = v5;
  v21.height = v7;
  UIGraphicsBeginImageContextWithOptions(v21, 0, v10);

  [edgesCopy size];
  v12 = v11;
  [edgesCopy size];
  v14 = v13;
  v15 = MEMORY[0x277D75208];
  [edgesCopy size];
  v17 = [v15 bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v12, v14, v16 * 0.225}];
  [v17 addClip];

  [edgesCopy drawInRect:{0.0, 0.0, v12, v14}];
  v18 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v18;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = STSAlertController;
  [(STSAlertController *)&v2 viewDidLoad];
}

@end