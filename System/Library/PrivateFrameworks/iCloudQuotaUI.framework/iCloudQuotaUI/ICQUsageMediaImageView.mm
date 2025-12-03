@interface ICQUsageMediaImageView
- (ICQUsageMediaImageView)init;
- (void)sizeToFit;
@end

@implementation ICQUsageMediaImageView

- (ICQUsageMediaImageView)init
{
  v5.receiver = self;
  v5.super_class = ICQUsageMediaImageView;
  v2 = [(ICQUsageMediaImageView *)&v5 init];
  if (v2)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(ICQUsageMediaImageView *)v2 setBackgroundColor:blackColor];

    [(ICQUsageMediaImageView *)v2 setContentMode:1];
  }

  return v2;
}

- (void)sizeToFit
{
  [(ICQUsageMediaImageView *)self frame];

  [(ICQUsageMediaImageView *)self setFrame:?];
}

@end