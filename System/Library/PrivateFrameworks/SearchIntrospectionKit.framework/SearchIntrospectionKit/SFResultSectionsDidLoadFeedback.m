@interface SFResultSectionsDidLoadFeedback
- (NSData)resultSections;
- (NSString)queryIdentifier;
- (SFResultSectionsDidLoadFeedback)init;
- (SFResultSectionsDidLoadFeedback)initWithResultSectionsData:(id)a3 queryIdentifier:(id)a4;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setQueryIdentifier:(id)a3;
- (void)setResultSections:(id)a3;
@end

@implementation SFResultSectionsDidLoadFeedback

- (NSData)resultSections
{
  v2 = (self + OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections);
  v3 = *(self + OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections + 8);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *v2;
    sub_264E65880(*v2, v3);
    v6 = sub_264E89834();
    sub_264E6855C(v5, v3);
    v4 = v6;
  }

  return v4;
}

- (void)setResultSections:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = sub_264E89854();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  v9 = (self + OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections);
  v10 = *(self + OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections);
  v11 = *(self + OBJC_IVAR___SFResultSectionsDidLoadFeedback_resultSections + 8);
  *v9 = v3;
  v9[1] = v7;
  sub_264E6855C(v10, v11);
}

- (NSString)queryIdentifier
{
  if (*(self + OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier + 8))
  {
    v2 = *(self + OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier);
    v3 = *(self + OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier + 8);

    v4 = sub_264E899B4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setQueryIdentifier:(id)a3
{
  if (a3)
  {
    v4 = sub_264E899D4();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier);
  v7 = *(self + OBJC_IVAR___SFResultSectionsDidLoadFeedback_queryIdentifier + 8);
  *v6 = v4;
  v6[1] = v5;
}

- (SFResultSectionsDidLoadFeedback)initWithResultSectionsData:(id)a3 queryIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_264E89854();
  v9 = v8;

  v10 = sub_264E899D4();
  v12 = v11;

  return SFResultSectionsDidLoadFeedback.init(resultSectionsData:queryIdentifier:)(v7, v9, v10, v12);
}

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  SFResultSectionsDidLoadFeedback.copy(with:)(a3, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_264E89DE4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SFResultSectionsDidLoadFeedback.encode(with:)(v4);
}

- (SFResultSectionsDidLoadFeedback)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end