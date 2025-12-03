@interface PKEpisode
+ (id)contentFrom:(id)from;
+ (id)itemFrom:(id)from;
+ (void)fetchEpisodeFrom:(id)from completion:(id)completion;
- (NSDate)releaseDate;
- (NSString)title;
- (PKEpisode)init;
- (PKEpisode)initWithTitle:(id)title releaseDate:(id)date isExplicit:(BOOL)explicit duration:(double)duration storeId:(id)id show:(id)show guid:(id)guid uuid:(id)self0 streamUrl:(id)self1;
- (id)lookupEpisode;
- (void)encodeWithCoder:(id)coder;
- (void)updateForDatabaseMatch;
@end

@implementation PKEpisode

- (void)updateForDatabaseMatch
{
  selfCopy = self;
  sub_25EA0BF20();
}

- (PKEpisode)init
{
  v2 = (self + OBJC_IVAR___PKEpisode_guid);
  *v2 = 0;
  v2[1] = 0;
  v3 = (self + OBJC_IVAR___PKEpisode_uuid);
  *v3 = 0;
  v3[1] = 0;
  v4 = (self + OBJC_IVAR___PKEpisode_episodeUuid);
  *v4 = 0;
  v4[1] = 0;
  result = sub_25EA1E8A8();
  __break(1u);
  return result;
}

- (PKEpisode)initWithTitle:(id)title releaseDate:(id)date isExplicit:(BOOL)explicit duration:(double)duration storeId:(id)id show:(id)show guid:(id)guid uuid:(id)self0 streamUrl:(id)self1
{
  explicitCopy = explicit;
  selfCopy = self;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FAE8, &qword_25EA22018) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v18 = &v37 - v17;
  v19 = sub_25EA1E648();
  v37 = v20;
  v38 = v19;
  if (date)
  {
    sub_25EA1E4B8();
    v21 = sub_25EA1E4D8();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  }

  else
  {
    v22 = sub_25EA1E4D8();
    (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  }

  uuidCopy = uuid;
  if (guid)
  {
    guid = sub_25EA1E648();
    v25 = v24;
    if (uuid)
    {
LABEL_6:
      v26 = sub_25EA1E648();
      uuidCopy = v27;
      goto LABEL_9;
    }
  }

  else
  {
    v25 = 0;
    if (uuid)
    {
      goto LABEL_6;
    }
  }

  v26 = 0;
LABEL_9:
  idCopy = id;
  showCopy = show;
  urlCopy = url;
  if (urlCopy)
  {
    v31 = urlCopy;
    v32 = sub_25EA1E648();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = sub_25EA0DF8C(v38, v37, v18, explicitCopy, idCopy, showCopy, guid, v25, duration, v26, uuidCopy, v32, v34);

  return v35;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  Episode.encode(with:)(coderCopy);
}

- (NSString)title
{
  v2 = *(self + OBJC_IVAR___PKEpisode_title);
  v3 = *(self + OBJC_IVAR___PKEpisode_title + 8);

  v4 = sub_25EA1E638();

  return v4;
}

- (NSDate)releaseDate
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FAE8, &qword_25EA22018) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v12 - v4;
  sub_25EA0D398(self + OBJC_IVAR___PKEpisode_releaseDate, &v12 - v4);
  v6 = sub_25EA1E4D8();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_25EA1E488();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

+ (id)contentFrom:(id)from
{
  swift_getObjCClassMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0FC80, &qword_25EA225E0);
  v3 = sub_25EA1E718();
  sub_25EA11E80(v3);

  v4 = sub_25EA1E708();

  return v4;
}

+ (id)itemFrom:(id)from
{
  v3 = sub_25EA1E628();
  v4 = sub_25EA11454(v3);

  return v4;
}

- (id)lookupEpisode
{
  selfCopy = self;
  v3 = sub_25EA12318();

  return v3;
}

+ (void)fetchEpisodeFrom:(id)from completion:(id)completion
{
  v5 = _Block_copy(completion);
  _Block_copy(v5);
  fromCopy = from;
  sub_25EA1D098(from, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end