@interface RPPairingShowViewController
+ (id)instantiateViewController;
- (void)_updatePasswordUI;
@end

@implementation RPPairingShowViewController

+ (id)instantiateViewController
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.RapportUI"];
  v3 = [MEMORY[0x277D75AC8] storyboardWithName:@"RPPairingShow_iOS" bundle:v2];
  v4 = [v3 instantiateViewControllerWithIdentifier:@"PINShow"];
  v5 = [v4 view];

  return v4;
}

- (void)_updatePasswordUI
{
  v9 = self->_password;
  if ([(NSString *)v9 length]== 4)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C %C %C %C", -[NSString characterAtIndex:](v9, "characterAtIndex:", 0), -[NSString characterAtIndex:](v9, "characterAtIndex:", 1), -[NSString characterAtIndex:](v9, "characterAtIndex:", 2), -[NSString characterAtIndex:](v9, "characterAtIndex:", 3), v5, v6, v7, v8];
LABEL_7:
    v4 = v3;
    [(UILabel *)self->_verificationCodeLabel setText:v3];

    goto LABEL_8;
  }

  if ([(NSString *)v9 length]== 6)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C %C %C   %C %C %C", -[NSString characterAtIndex:](v9, "characterAtIndex:", 0), -[NSString characterAtIndex:](v9, "characterAtIndex:", 1), -[NSString characterAtIndex:](v9, "characterAtIndex:", 2), -[NSString characterAtIndex:](v9, "characterAtIndex:", 3), -[NSString characterAtIndex:](v9, "characterAtIndex:", 4), -[NSString characterAtIndex:](v9, "characterAtIndex:", 5), v7, v8];
    goto LABEL_7;
  }

  if ([(NSString *)v9 length]== 8)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%C%C%C-%C%C-%C%C%C", -[NSString characterAtIndex:](v9, "characterAtIndex:", 0), -[NSString characterAtIndex:](v9, "characterAtIndex:", 1), -[NSString characterAtIndex:](v9, "characterAtIndex:", 2), -[NSString characterAtIndex:](v9, "characterAtIndex:", 3), -[NSString characterAtIndex:](v9, "characterAtIndex:", 4), -[NSString characterAtIndex:](v9, "characterAtIndex:", 5), -[NSString characterAtIndex:](v9, "characterAtIndex:", 6), -[NSString characterAtIndex:](v9, "characterAtIndex:", 7)];
    goto LABEL_7;
  }

  [(UILabel *)self->_verificationCodeLabel setText:v9];
LABEL_8:
}

@end