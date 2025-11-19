@interface SBHPageManagementListTapGestureRecognizer
- (void)reset;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation SBHPageManagementListTapGestureRecognizer

- (void)reset
{
  v3.receiver = self;
  v3.super_class = SBHPageManagementListTapGestureRecognizer;
  [(SBHPageManagementListTapGestureRecognizer *)&v3 reset];
  [(SBHPageManagementListTapGestureRecognizer *)self setActiveTouch:0];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = SBHPageManagementListTapGestureRecognizer;
  [(SBHPageManagementListTapGestureRecognizer *)&v8 touchesBegan:v6 withEvent:a4];
  if ([v6 count] < 2)
  {
    if (![(SBHPageManagementListTapGestureRecognizer *)self state])
    {
      v7 = [v6 anyObject];
      [(SBHPageManagementListTapGestureRecognizer *)self setActiveTouch:v7];
      [(SBHPageManagementListTapGestureRecognizer *)self setState:1];
    }
  }

  else
  {
    [(SBHPageManagementListTapGestureRecognizer *)self setState:5];
  }
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = SBHPageManagementListTapGestureRecognizer;
  v6 = a3;
  [(SBHPageManagementListTapGestureRecognizer *)&v11 touchesMoved:v6 withEvent:a4];
  v7 = [v6 anyObject];
  v8 = [v6 count];

  if (v8 > 1)
  {
    v10 = 5;
  }

  else
  {
    v9 = [(SBHPageManagementListTapGestureRecognizer *)self activeTouch];

    if (v7 == v9)
    {
      v10 = 2;
    }

    else
    {
      v10 = 5;
    }
  }

  [(SBHPageManagementListTapGestureRecognizer *)self setState:v10];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = SBHPageManagementListTapGestureRecognizer;
  v6 = a3;
  [(SBHPageManagementListTapGestureRecognizer *)&v11 touchesEnded:v6 withEvent:a4];
  v7 = [v6 anyObject];
  v8 = [v6 count];

  if (v8 > 1)
  {
    v10 = 5;
  }

  else
  {
    v9 = [(SBHPageManagementListTapGestureRecognizer *)self activeTouch];

    if (v7 == v9)
    {
      v10 = 3;
    }

    else
    {
      v10 = 5;
    }
  }

  [(SBHPageManagementListTapGestureRecognizer *)self setState:v10];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = SBHPageManagementListTapGestureRecognizer;
  [(SBHPageManagementListTapGestureRecognizer *)&v5 touchesCancelled:a3 withEvent:a4];
  [(SBHPageManagementListTapGestureRecognizer *)self setState:4];
}

@end