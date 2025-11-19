uint64_t EpisodeListType.sortTypeFromUserDefaults.getter()
{
  result = 0;
  v2 = 0xEA00000000006465;
  v3 = 0x64616F6C6E776F64;
  v4 = *v0;
  v5 = *(v0 + 64);
  if (v5 > 4)
  {
    if (*(v0 + 64) <= 7u)
    {
      if (v5 == 5)
      {
        return 2;
      }

      if (v5 == 6)
      {
        return 13;
      }

      goto LABEL_5;
    }

    if (v5 - 8 < 2)
    {
      return result;
    }

    v6 = v0[5];
    v7 = v0[1];
    v8 = v0[6] | v0[7];
    v9 = v0[4] | v0[3] | v0[2];
    if (v8 | v4 | v6 | v9 | v7)
    {
      v10 = v8 | v6 | v9 | v7;
      if (v4 != 1 || v10)
      {
        if (v4 == 2 && !v10)
        {
          return 15;
        }

        if (v4 == 3 && !v10)
        {
          return 0;
        }

        if (v4 == 4 && !v10)
        {
          return 12;
        }

        if (v4 != 5 || v10)
        {
          result = 16;
          if (v4 != 6 || v10)
          {
            return result;
          }

LABEL_5:
          v2 = 0xE900000000000073;
          v3 = 0x6B72616D6B6F6F62;
          goto LABEL_14;
        }

        v2 = 0xEE007365646F7369;
        v3 = 0x704574736574616CLL;
      }

      else
      {
        v2 = 0xEE00646579616C50;
        v3 = 0x796C746E65636572;
      }
    }

LABEL_14:
    v11 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v12 = [v11 episodeListSortTypeDictionary];

    if (v12)
    {
      v13 = sub_1D917805C();

      if (*(v13 + 16))
      {
        v14 = v0;
        v15 = sub_1D8D33C70(v3, v2);
        v17 = v16;

        if (v17)
        {
          sub_1D8CFAD1C(*(v13 + 56) + 32 * v15, v34);

          v0 = v14;
          if (swift_dynamicCast())
          {
            v18 = _s18PodcastsFoundation15EpisodeSortTypeO8rawValueACSgSS_tcfC_0();
            if (v18 != 17)
            {
              if (v5 >= 0xA)
              {
                v25 = v14[5];
                v26 = v14[1];
                v27 = v14[6] | v14[7];
                v28 = v14[4] | v14[3] | v14[2];
                if (v27 | v4 | v25 | v28 | v26)
                {
                  v29 = v27 | v25 | v28 | v26;
                  v19 = MEMORY[0x1E69E7CC0];
                  if ((v4 - 1) > 3 || v29)
                  {
                    if (v4 != 5 || v29)
                    {
                      if (v29)
                      {
                        v30 = 0;
                      }

                      else
                      {
                        v30 = v4 == 6;
                      }

                      if (v30)
                      {
                        v19 = &unk_1F5460E38;
                      }
                    }

                    else
                    {
                      v19 = &unk_1F5460E88;
                    }
                  }
                }

                else
                {
                  v19 = &unk_1F5460E60;
                }
              }

              else
              {
                v19 = MEMORY[0x1E69E7CC0];
              }

              v31 = v18;
              v32 = sub_1D8F95EBC(v18, v19);

              result = v31;
              if (!v32)
              {
                return EpisodeListType.defaultSortType.getter();
              }

              return result;
            }
          }

          goto LABEL_25;
        }

        v0 = v14;
      }

      else
      {
      }
    }

LABEL_25:
    if (v5 <= 6)
    {
      if (v5 == 2)
      {
        return 9;
      }

      return 2;
    }

    if (v5 - 8 < 2)
    {
      return 0;
    }

    if (v5 == 7)
    {
      return 7;
    }

    v20 = v0[5];
    v21 = v0[1];
    v22 = v0[6] | v0[7];
    v23 = v0[4] | v0[3] | v0[2];
    if (!(v22 | v4 | v20 | v23 | v21))
    {
      return 14;
    }

    v24 = v22 | v20 | v23 | v21;
    if (v4 == 1 && !v24)
    {
      return 12;
    }

    if (v4 == 2 && !v24)
    {
      return 15;
    }

    if (v4 == 3 && !v24)
    {
      return 0;
    }

    if (v4 == 4 && !v24)
    {
      return 12;
    }

    if (v4 != 5 || v24)
    {
      if (v24)
      {
        v33 = 0;
      }

      else
      {
        v33 = v4 == 6;
      }

      if (v33)
      {
        return 7;
      }

      else
      {
        return 16;
      }
    }

    return 2;
  }

  if (*(v0 + 64) > 2u)
  {
    return 2;
  }

  if (v5 >= 2)
  {
    goto LABEL_14;
  }

  return result;
}

void EpisodeListType.sortTypeFromUserDefaults.setter(char a1)
{
  v2 = 0xEA00000000006465;
  v3 = 0x64616F6C6E776F64;
  v4 = *(v1 + 64);
  if (v4 > 0xA)
  {
    goto LABEL_10;
  }

  if (((1 << v4) & 0x378) != 0)
  {
    return;
  }

  if (v4 == 7)
  {
LABEL_4:
    v5 = a1;
    v2 = 0xE900000000000073;
    v3 = 0x6B72616D6B6F6F62;
LABEL_12:
    v12 = objc_opt_self();
    v13 = [v12 _applePodcastsFoundationSharedUserDefaults];
    v14 = [v13 episodeListSortTypeDictionary];

    if (v14)
    {
      v15 = MEMORY[0x1E69E6158];
      v16 = sub_1D917805C();

      v29 = v15;
      *&v28 = EpisodeSortType.rawValue.getter(v5);
      *(&v28 + 1) = v17;
      sub_1D8D65618(&v28, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D8F502C0(v27, v3, v2, isUniquelyReferenced_nonNull_native);

      v19 = v16;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D9189080;
      *(inited + 32) = v3;
      *(inited + 40) = v2;
      v21 = EpisodeSortType.rawValue.getter(v5);
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v21;
      *(inited + 56) = v22;
      v19 = sub_1D8E2696C(inited);
      swift_setDeallocating();
      sub_1D8F51B08(inited + 32);
    }

    v23 = [v12 _applePodcastsFoundationSharedUserDefaults];
    if (v19)
    {
      v24 = sub_1D917802C();
    }

    else
    {
      v24 = 0;
    }

    [v23 setEpisodeListSortTypeDictionary_];

    v25 = [v12 _applePodcastsFoundationSharedUserDefaults];
    [v25 synchronize];

    return;
  }

  if (v4 != 10)
  {
LABEL_10:
    if (v4 < 2)
    {
      return;
    }

    goto LABEL_11;
  }

  v6 = v1[5];
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[6] | v1[7];
  v10 = v1[4] | v1[3] | v1[2];
  if (!(v9 | *v1 | v6 | v10 | v8))
  {
LABEL_11:
    v5 = a1;
    goto LABEL_12;
  }

  v11 = v9 | v6 | v10 | v8;
  if (v7 == 1 && !v11)
  {
    v5 = a1;
    v2 = 0xEE00646579616C50;
    v3 = 0x796C746E65636572;
    goto LABEL_12;
  }

  v26 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 2 || v7 == 4;
  if (!v26 || v11)
  {
    if (v7 == 5 && !v11)
    {
      v5 = a1;
      v2 = 0xEE007365646F7369;
      v3 = 0x704574736574616CLL;
      goto LABEL_12;
    }

    if (v7 != 6 || v11)
    {
      return;
    }

    goto LABEL_4;
  }
}

void *EpisodeListType.allowedSortTypes.getter()
{
  if (*(v0 + 64) < 0xAu)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v0[5];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[6] | v0[7];
  v6 = v0[4] | v0[3] | v0[2];
  if (!(v5 | *v0 | v2 | v6 | v4))
  {
    return &unk_1F5460E60;
  }

  v7 = v5 | v2 | v6 | v4;
  result = MEMORY[0x1E69E7CC0];
  if ((v3 - 1) > 3 || v7)
  {
    if (v3 != 5 || v7)
    {
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = v3 == 6;
      }

      if (v8)
      {
        return &unk_1F5460E38;
      }
    }

    else
    {
      return &unk_1F5460E88;
    }
  }

  return result;
}

void (*EpisodeListType.sortTypeFromUserDefaults.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = EpisodeListType.sortTypeFromUserDefaults.getter();
  return sub_1D8F97E14;
}

uint64_t EpisodeListType.defaultNonGroupByShowSortType.getter()
{
  v1 = *(v0 + 64);
  if (v1 <= 4)
  {
    if (v1 == 2)
    {
      v4 = 9;
    }

    else
    {
      v4 = 2;
    }

    if (*(v0 + 64) <= 1u)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  else if (*(v0 + 64) > 7u)
  {
    if (v1 == 8 || v1 == 9)
    {
      return 0;
    }

    v5 = v0[2];
    v6 = v0[3];
    v7 = *v0;
    v8 = v0[1];
    v9 = v0[6] | v0[7];
    v10 = v0[5] | v0[4];
    v11 = v9 | v10 | v6 | v5 | v8;
    if (!(v11 | *v0))
    {
      return 9;
    }

    if (!(v9 | v7 | v10 | v6 | v5 | v8))
    {
      return 14;
    }

    if (v7 == 1 && !v11)
    {
      return 12;
    }

    if (v7 == 2 && !v11)
    {
      return 15;
    }

    if (v7 == 3 && !v11)
    {
      return 0;
    }

    if (v7 != 4 || v11)
    {
      if (v7 != 5 || v11)
      {
        if (v11)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == 6;
        }

        if (v12)
        {
          return 7;
        }

        else
        {
          return 16;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 12;
    }
  }

  else
  {
    if (v1 == 6)
    {
      v2 = 13;
    }

    else
    {
      v2 = *(v0 + 64);
    }

    if (v1 == 5)
    {
      return 2;
    }

    else
    {
      return v2;
    }
  }
}

void *EpisodeListType.availableSortTypes.getter()
{
  if (*(v0 + 64) < 0xAu)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v0[5];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[6] | v0[7];
  v6 = v0[4] | v0[3] | v0[2];
  if (!(v5 | *v0 | v2 | v6 | v4))
  {
    return &unk_1F5460ED8;
  }

  v7 = v5 | v2 | v6 | v4;
  result = MEMORY[0x1E69E7CC0];
  if ((v3 - 1) > 3 || v7)
  {
    if (v3 != 5 || v7)
    {
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v8 = v3 == 6;
      }

      if (v8)
      {
        return &unk_1F5460EB0;
      }
    }

    else
    {
      return &unk_1F5460F00;
    }
  }

  return result;
}

uint64_t EpisodeListType.pubDateLimit.getter()
{
  if (v0[4].i8[0] != 10)
  {
    return 3;
  }

  v1 = vorrq_s8(v0[2], v0[3]);
  v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v0[1].i64[1] | v0[1].i64[0] | v0->i64[1];
  if (v0->i64[0] != 5 || v2 != 0)
  {
    return 3;
  }

  v5 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v6 = [v5 dictionaryForKey_];

  if (v6)
  {
    v7 = sub_1D917805C();

    if (*(v7 + 16) && (v8 = sub_1D8D33C70(0x704574736574616CLL, 0xEE007365646F7369), (v9 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v7 + 56) + 32 * v8, v11);

      if (swift_dynamicCast())
      {
        return v10;
      }
    }

    else
    {
    }
  }

  return 2;
}

void EpisodeListType.pubDateLimit.setter(uint64_t a1)
{
  v2 = 0xEA00000000006465;
  v3 = 0x64616F6C6E776F64;
  v4 = *(v1 + 64);
  if (v4 > 0xA)
  {
    goto LABEL_10;
  }

  if (((1 << v4) & 0x378) != 0)
  {
    return;
  }

  if (v4 == 7)
  {
LABEL_4:
    v5 = a1;
    v2 = 0xE900000000000073;
    v3 = 0x6B72616D6B6F6F62;
LABEL_12:
    v12 = objc_opt_self();
    v13 = [v12 _applePodcastsFoundationSharedUserDefaults];
    v14 = [v13 dictionaryForKey_];

    if (v14)
    {
      sub_1D917805C();
    }

    else
    {
      sub_1D8E2696C(MEMORY[0x1E69E7CC0]);
    }

    v22 = MEMORY[0x1E69E6530];
    *&v21 = v5;
    sub_1D8D65618(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F502C0(v20, v3, v2, isUniquelyReferenced_nonNull_native);

    v16 = [v12 _applePodcastsFoundationSharedUserDefaults];
    v17 = sub_1D917802C();

    [v16 setObject:v17 forKey:@"kEpisodeListPubDateLimitKey"];

    v18 = [v12 _applePodcastsFoundationSharedUserDefaults];
    [v18 synchronize];

    return;
  }

  if (v4 != 10)
  {
LABEL_10:
    if (v4 < 2)
    {
      return;
    }

    goto LABEL_11;
  }

  v6 = v1[5];
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[6] | v1[7];
  v10 = v1[4] | v1[3] | v1[2];
  if (!(v9 | *v1 | v6 | v10 | v8))
  {
LABEL_11:
    v5 = a1;
    goto LABEL_12;
  }

  v11 = v9 | v6 | v10 | v8;
  if (v7 == 1 && !v11)
  {
    v5 = a1;
    v2 = 0xEE00646579616C50;
    v3 = 0x796C746E65636572;
    goto LABEL_12;
  }

  v19 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 2 || v7 == 4;
  if (!v19 || v11)
  {
    if (v7 == 5 && !v11)
    {
      v5 = a1;
      v2 = 0xEE007365646F7369;
      v3 = 0x704574736574616CLL;
      goto LABEL_12;
    }

    if (v7 != 6 || v11)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t EpisodeListType.defaultPubDateLimit.getter()
{
  if (v0[4].i8[0] == 10 && ((v1 = vorrq_s8(v0[2], v0[3]), v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | v0[1].i64[1] | v0[1].i64[0] | v0->i64[1], v0->i64[0] == 5) ? (v3 = v2 == 0) : (v3 = 0), v3))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void (*EpisodeListType.pubDateLimit.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = EpisodeListType.pubDateLimit.getter();
  return sub_1D8F9853C;
}

uint64_t EpisodeListType.hidePlayedEpisodes.getter()
{
  v1 = 0xEA00000000006465;
  v2 = 0x64616F6C6E776F64;
  v4 = *v0;
  v3 = v0[1];
  v5 = v0[2];
  v6 = v0[3];
  v8 = v0[6];
  v7 = v0[7];
  v9 = *(v0 + 64);
  if (v9 == 2)
  {
    goto LABEL_10;
  }

  if (v9 != 7)
  {
    if (v9 != 10)
    {
      return 0;
    }

    v10 = v0[4] | v0[5] | v8;
    if (v5 | v3 | v4 | v6 | v10 | v7)
    {
      result = 0;
      if ((v4 - 5) > 1)
      {
        return result;
      }

      v12 = v5 | v3 | v6 | v10;
      if (v12 | v7)
      {
        return result;
      }

      if (v4 == 5 && !v12)
      {
        v22 = v0[4];
        v23 = v0[5];
        v24 = v0[2];
        v1 = 0xEE007365646F7369;
        v2 = 0x704574736574616CLL;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_10:
    v22 = v0[4];
    v23 = v0[5];
    v24 = v0[2];
    goto LABEL_12;
  }

LABEL_11:
  v22 = v0[4];
  v23 = v0[5];
  v24 = v0[2];
  v1 = 0xE900000000000073;
  v2 = 0x6B72616D6B6F6F62;
LABEL_12:
  v13 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v14 = [v13 dictionaryForKey_];

  if (v14)
  {
    v21 = v3;
    v15 = sub_1D917805C();

    if (*(v15 + 16))
    {
      v16 = sub_1D8D33C70(v2, v1);
      v18 = v17;

      if (v18)
      {
        sub_1D8CFAD1C(*(v15 + 56) + 32 * v16, v26);

        if (swift_dynamicCast())
        {
          return v25;
        }

        goto LABEL_21;
      }
    }

    else
    {
    }

LABEL_21:
    v3 = v21;
    return v4 == 5 && (v24 | v3 | v6 | v22 | v23 | v8 | v7) == 0 && v9 == 10;
  }

  return v4 == 5 && (v24 | v3 | v6 | v22 | v23 | v8 | v7) == 0 && v9 == 10;
}

void EpisodeListType.hidePlayedEpisodes.setter(char a1)
{
  v2 = 0xEA00000000006465;
  v3 = 0x64616F6C6E776F64;
  v4 = *(v1 + 64);
  if (v4 > 0xA)
  {
    goto LABEL_10;
  }

  if (((1 << v4) & 0x378) != 0)
  {
    return;
  }

  if (v4 == 7)
  {
LABEL_4:
    v5 = a1;
    v2 = 0xE900000000000073;
    v3 = 0x6B72616D6B6F6F62;
LABEL_12:
    v12 = objc_opt_self();
    v13 = [v12 _applePodcastsFoundationSharedUserDefaults];
    v14 = [v13 dictionaryForKey_];

    if (v14)
    {
      sub_1D917805C();
    }

    else
    {
      sub_1D8E2696C(MEMORY[0x1E69E7CC0]);
    }

    v22 = MEMORY[0x1E69E6370];
    LOBYTE(v21) = v5 & 1;
    sub_1D8D65618(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8F502C0(v20, v3, v2, isUniquelyReferenced_nonNull_native);

    v16 = [v12 _applePodcastsFoundationSharedUserDefaults];
    v17 = sub_1D917802C();

    [v16 setObject:v17 forKey:@"kEpisodeListHidePlayedEpisodesKey"];

    v18 = [v12 _applePodcastsFoundationSharedUserDefaults];
    [v18 synchronize];

    return;
  }

  if (v4 != 10)
  {
LABEL_10:
    if (v4 < 2)
    {
      return;
    }

    goto LABEL_11;
  }

  v6 = v1[5];
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[6] | v1[7];
  v10 = v1[4] | v1[3] | v1[2];
  if (!(v9 | *v1 | v6 | v10 | v8))
  {
LABEL_11:
    v5 = a1;
    goto LABEL_12;
  }

  v11 = v9 | v6 | v10 | v8;
  if (v7 == 1 && !v11)
  {
    v5 = a1;
    v2 = 0xEE00646579616C50;
    v3 = 0x796C746E65636572;
    goto LABEL_12;
  }

  v19 = (v7 & 0xFFFFFFFFFFFFFFFELL) == 2 || v7 == 4;
  if (!v19 || v11)
  {
    if (v7 == 5 && !v11)
    {
      v5 = a1;
      v2 = 0xEE007365646F7369;
      v3 = 0x704574736574616CLL;
      goto LABEL_12;
    }

    if (v7 != 6 || v11)
    {
      return;
    }

    goto LABEL_4;
  }
}

BOOL EpisodeListType.allowsHidePlayedEpisodes.getter()
{
  v1 = *(v0 + 64);
  if (v1 == 2 || v1 == 7)
  {
    return 1;
  }

  if (v1 != 10)
  {
    return 0;
  }

  v4 = v0[5];
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[6] | v0[7];
  v8 = v0[4] | v0[3] | v0[2];
  if (!(v7 | *v0 | v4 | v8 | v6))
  {
    return 1;
  }

  v9 = v7 | v4 | v8 | v6;
  if (v5 == 5 && !v9)
  {
    return 1;
  }

  return v5 == 6 && v9 == 0;
}

BOOL _s18PodcastsFoundation15EpisodeListTypeO21allowsPubDateLimitingSbvg_0()
{
  v1 = vorrq_s8(*(v0 + 8), *(v0 + 24));
  v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | *(v0 + 40) | *(v0 + 48) | *(v0 + 56);
  return *v0 == 5 && v2 == 0 && *(v0 + 64) == 10;
}

void (*EpisodeListType.hidePlayedEpisodes.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = EpisodeListType.hidePlayedEpisodes.getter() & 1;
  return sub_1D8F98BE8;
}

BOOL EpisodeListType.showsHidePlayedEpisodesControls.getter()
{
  result = 0;
  if (*(v0 + 64) == 10)
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 8);
    v3 = *(v0 + 48) | *(v0 + 56);
    v4 = *(v0 + 32) | *(v0 + 24) | *(v0 + 16);
    if (!(v3 | *v0 | v1 | v4 | v2) || (*v0 - 5) <= 1 && !(v3 | v1 | v4 | v2))
    {
      return 1;
    }
  }

  return result;
}

uint64_t EpisodeListType.shelfImpressionMetricsID.getter()
{
  v1 = *(v0 + 64);
  if (v1 == 6)
  {
    return 0x7478654E7055;
  }

  if (v1 != 10)
  {
    return 0;
  }

  v2 = v0[5];
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[6] | v0[7];
  v6 = v0[4] | v0[3] | v0[2];
  if (!(v5 | *v0 | v2 | v6 | v4))
  {
    return 0x64616F6C6E776F44;
  }

  v7 = v5 | v2 | v6 | v4;
  if (v3 == 1 && !v7)
  {
    return 0x796C746E65636552;
  }

  if (v3 == 5 && !v7)
  {
    return 0x704574736574614CLL;
  }

  if (v3 == 6 && v7 == 0)
  {
    return 0x6465766153;
  }

  return 0;
}

uint64_t _s18PodcastsFoundation15EpisodeListTypeO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = a1[64];
  v9 = v3 | (v4 << 8) | (*(a1 + 2) << 16) | (*(a1 + 3) << 48);
  if (v8 <= 4)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        if (a2[4].i8[0] == 2)
        {
          goto LABEL_58;
        }
      }

      else if (v8 == 3)
      {
        if (a2[4].i8[0] == 3)
        {
          goto LABEL_58;
        }
      }

      else if (a2[4].i8[0] == 4)
      {
        v23 = a2[1].i64[0];
        v24 = a2[1].u8[8];
        if (v9 == a2->i64[0] && v5 == a2->i64[1])
        {
          if (v6 != v23)
          {
            goto LABEL_114;
          }
        }

        else
        {
          v26 = sub_1D9179ACC();
          v14 = 0;
          if ((v26 & 1) == 0 || v6 != v23)
          {
            return v14 & 1;
          }
        }

        if (v7 == 2)
        {
          if (v24 == 2)
          {
            goto LABEL_113;
          }
        }

        else if (v24 != 2 && ((v7 ^ v24) & 1) == 0)
        {
          goto LABEL_113;
        }
      }

LABEL_114:
      v14 = 0;
      return v14 & 1;
    }

    if (v8)
    {
      if (a2[4].i8[0] != 1)
      {
        goto LABEL_114;
      }
    }

    else if (a2[4].i8[0])
    {
      goto LABEL_114;
    }

    v27 = a2->i64[0];

    return sub_1D8E84300(v9, v27);
  }

  else
  {
    v10 = *(a1 + 4);
    v11 = *(a1 + 5);
    v13 = *(a1 + 6);
    v12 = *(a1 + 7);
    if (v8 <= 7)
    {
      if (v8 == 5)
      {
        if (a2[4].i8[0] != 5)
        {
          goto LABEL_114;
        }

        v16 = a2[1].i64[0];
        v15 = a2[1].i64[1];
        v18 = a2[2].i64[0];
        v17 = a2[2].i64[1];
        v33 = a2[3].i64[1];
        v34 = a2[3].i64[0];
        if ((v9 != a2->i64[0] || v5 != a2->i64[1]) && (sub_1D9179ACC() & 1) == 0)
        {
          goto LABEL_114;
        }

        if ((v6 != v16 || v7 != v15) && (sub_1D9179ACC() & 1) == 0)
        {
          goto LABEL_114;
        }

        if (v11)
        {
          if (!v17 || (v10 != v18 || v11 != v17) && (sub_1D9179ACC() & 1) == 0)
          {
            goto LABEL_114;
          }
        }

        else if (v17)
        {
          goto LABEL_114;
        }

        if (v13 != v34 || v12 != v33)
        {
          goto LABEL_62;
        }

        goto LABEL_113;
      }

      if (v8 == 6)
      {
        if (a2[4].i8[0] == 6)
        {
          v14 = v4 ^ a2->i8[1] ^ 1;
          if ((v3 ^ a2->i8[0]))
          {
            v14 = 0;
          }

          return v14 & 1;
        }

        goto LABEL_114;
      }

      if (a2[4].i8[0] == 7)
      {
LABEL_58:
        if (v9 != a2->i64[0] || v5 != a2->i64[1])
        {
LABEL_62:

          return sub_1D9179ACC();
        }

LABEL_113:
        v14 = 1;
        return v14 & 1;
      }

      goto LABEL_114;
    }

    if (v8 != 8)
    {
      if (v8 == 9)
      {
        if (a2[4].i8[0] == 9)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v29 = v6 | v5 | v7;
        if (v29 | v10 | v11 | v9 | v13 | v12)
        {
          v30 = v29 | v10 | v11 | v13 | v12;
          if (v9 != 1 || v30)
          {
            if (v9 != 2 || v30)
            {
              if (v9 != 3 || v30)
              {
                if (v9 != 4 || v30)
                {
                  if (v9 != 5 || v30)
                  {
                    if (v9 != 6 || v30)
                    {
                      if (a2[4].i8[0] != 10 || a2->i64[0] != 7)
                      {
                        goto LABEL_114;
                      }
                    }

                    else if (a2[4].i8[0] != 10 || a2->i64[0] != 6)
                    {
                      goto LABEL_114;
                    }
                  }

                  else if (a2[4].i8[0] != 10 || a2->i64[0] != 5)
                  {
                    goto LABEL_114;
                  }
                }

                else if (a2[4].i8[0] != 10 || a2->i64[0] != 4)
                {
                  goto LABEL_114;
                }
              }

              else if (a2[4].i8[0] != 10 || a2->i64[0] != 3)
              {
                goto LABEL_114;
              }
            }

            else if (a2[4].i8[0] != 10 || a2->i64[0] != 2)
            {
              goto LABEL_114;
            }
          }

          else if (a2[4].i8[0] != 10 || a2->i64[0] != 1)
          {
            goto LABEL_114;
          }

          v32 = vorrq_s8(a2[2], a2[3]);
          if (!(*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | a2[1].i64[1] | a2[1].i64[0] | a2->i64[1]))
          {
            goto LABEL_113;
          }
        }

        else if (a2[4].i8[0] == 10)
        {
          v31 = vorrq_s8(vorrq_s8(*a2, a2[2]), vorrq_s8(a2[1], a2[3]));
          if (!*&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)))
          {
            goto LABEL_113;
          }
        }
      }

      goto LABEL_114;
    }

    if (a2[4].i8[0] != 8)
    {
      goto LABEL_114;
    }

    v19 = a2[1].i64[0];
    v20 = a2[1].i8[8];
    v21 = v9 == a2->i64[0] && v5 == a2->i64[1];
    if (!v21 && (sub_1D9179ACC() & 1) == 0)
    {
      goto LABEL_114;
    }

    return static EpisodeUserFilter.== infix(_:_:)(v6, v7, v19, v20);
  }
}

unint64_t sub_1D8F992C4()
{
  result = qword_1ECAB7F28;
  if (!qword_1ECAB7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F28);
  }

  return result;
}

unint64_t sub_1D8F99318()
{
  result = qword_1ECAB7F30;
  if (!qword_1ECAB7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F30);
  }

  return result;
}

unint64_t sub_1D8F9936C()
{
  result = qword_1ECAB7F38;
  if (!qword_1ECAB7F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F38);
  }

  return result;
}

unint64_t sub_1D8F993C0()
{
  result = qword_1ECAB7F40;
  if (!qword_1ECAB7F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F40);
  }

  return result;
}

unint64_t sub_1D8F99414()
{
  result = qword_1ECAB7F48;
  if (!qword_1ECAB7F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F48);
  }

  return result;
}

unint64_t sub_1D8F99468()
{
  result = qword_1ECAB7F50;
  if (!qword_1ECAB7F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F50);
  }

  return result;
}

unint64_t sub_1D8F994BC()
{
  result = qword_1ECAB7F58;
  if (!qword_1ECAB7F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F58);
  }

  return result;
}

unint64_t sub_1D8F99510()
{
  result = qword_1ECAB7F60;
  if (!qword_1ECAB7F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F60);
  }

  return result;
}

unint64_t sub_1D8F99564()
{
  result = qword_1ECAB7F68;
  if (!qword_1ECAB7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F68);
  }

  return result;
}

unint64_t sub_1D8F995B8()
{
  result = qword_1ECAB7F70;
  if (!qword_1ECAB7F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F70);
  }

  return result;
}

unint64_t sub_1D8F9960C()
{
  result = qword_1ECAB7F78;
  if (!qword_1ECAB7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F78);
  }

  return result;
}

unint64_t sub_1D8F99660()
{
  result = qword_1ECAB7F80;
  if (!qword_1ECAB7F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F80);
  }

  return result;
}

unint64_t sub_1D8F996B4()
{
  result = qword_1ECAB7F90;
  if (!qword_1ECAB7F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F90);
  }

  return result;
}

unint64_t sub_1D8F99708()
{
  result = qword_1ECAB7F98;
  if (!qword_1ECAB7F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7F98);
  }

  return result;
}

unint64_t sub_1D8F9975C()
{
  result = qword_1ECAB7FA0;
  if (!qword_1ECAB7FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FA0);
  }

  return result;
}

unint64_t sub_1D8F997B0()
{
  result = qword_1ECAB7FA8;
  if (!qword_1ECAB7FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FA8);
  }

  return result;
}

unint64_t sub_1D8F99804()
{
  result = qword_1ECAB7FB0;
  if (!qword_1ECAB7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FB0);
  }

  return result;
}

unint64_t sub_1D8F99858()
{
  result = qword_1ECAB7FC0;
  if (!qword_1ECAB7FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FC0);
  }

  return result;
}

uint64_t sub_1D8F998AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5574736163646F70 && a2 == 0xEB00000000646975;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C6C6175736976 && a2 == 0xEE00646579616C50)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D8F999CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x80000001D91D09A0 == a2;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D0980 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEA00000000006465 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D09C0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796C746E65636572 && a2 == 0xEE00646579616C50 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C696176416C6C61 && a2 == 0xEC000000656C6261 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D91D09E0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D91D0A00 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F4E6E657473696CLL && a2 == 0xEF7478654E705577 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7079746F746F7270 && a2 == 0xEF7478654E705565 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6F7369704577656ELL && a2 == 0xEB00000000736564 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEF676E6979616C50 || (sub_1D9179ACC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x704574736574616CLL && a2 == 0xEE007365646F7369 || (sub_1D9179ACC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE900000000000073 || (sub_1D9179ACC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D0A20 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 2003789939 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D91D0A40 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x706F546863746177 && a2 == 0xED00006C6576654CLL)
  {

    return 17;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1D8F99FB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x556E6F6974617473 && a2 == 0xEB00000000646975;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536E6F6974617473 && a2 == 0xEF64697555776F68 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5574736163646F70 && a2 == 0xEB00000000646975)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D8F9A124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v206 = a2;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8040, &qword_1D919E280);
  v182 = *(v185 - 8);
  v3 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v200 = &v150 - v4;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8048, &qword_1D919E288);
  v184 = *(v183 - 8);
  v5 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v205 = &v150 - v6;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8050, &qword_1D919E290);
  v187 = *(v186 - 8);
  v7 = *(v187 + 64);
  MEMORY[0x1EEE9AC00](v186);
  v204 = &v150 - v8;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8058, &qword_1D919E298);
  v180 = *(v181 - 8);
  v9 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v199 = &v150 - v10;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8060, &qword_1D919E2A0);
  v178 = *(v179 - 8);
  v11 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v198 = &v150 - v12;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8068, &qword_1D919E2A8);
  v176 = *(v177 - 8);
  v13 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v197 = &v150 - v14;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8070, &qword_1D919E2B0);
  v174 = *(v175 - 8);
  v15 = *(v174 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v196 = &v150 - v16;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8078, &qword_1D919E2B8);
  v172 = *(v173 - 8);
  v17 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v195 = &v150 - v18;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8080, &qword_1D919E2C0);
  v167 = *(v168 - 8);
  v19 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v193 = &v150 - v20;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8088, &qword_1D919E2C8);
  v170 = *(v171 - 8);
  v21 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v194 = &v150 - v22;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8090, &qword_1D919E2D0);
  v188 = *(v169 - 8);
  v23 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v203 = &v150 - v24;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8098, &qword_1D919E2D8);
  v189 = *(v166 - 8);
  v25 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v202 = &v150 - v26;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB80A0, &qword_1D919E2E0);
  v165 = *(v160 - 8);
  v27 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v160);
  v192 = &v150 - v28;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB80A8, &qword_1D919E2E8);
  v162 = *(v164 - 8);
  v29 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v164);
  v191 = &v150 - v30;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB80B0, &qword_1D919E2F0);
  v161 = *(v163 - 8);
  v31 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v201 = &v150 - v32;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB80B8, &qword_1D919E2F8);
  v156 = *(v157 - 8);
  v33 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v190 = &v150 - v34;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB80C0, &qword_1D919E300);
  v158 = *(v159 - 8);
  v35 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v37 = &v150 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB80C8, &qword_1D919E308);
  v155 = *(v38 - 8);
  v39 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v150 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB80D0, &unk_1D919E310);
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v150 - v45;
  v47 = a1[3];
  v48 = a1[4];
  v207 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v47);
  sub_1D8CFFEF4();
  v49 = v208;
  sub_1D9179EEC();
  v208 = v49;
  if (v49)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v207);
  }

  v152 = v41;
  v151 = v38;
  v153 = v37;
  v50 = v201;
  v51 = v202;
  v52 = v203;
  v53 = v204;
  v54 = v205;
  v154 = v43;
  v55 = v206;
  v56 = sub_1D917991C();
  v57 = (2 * *(v56 + 16)) | 1;
  v211 = v56;
  v212 = v56 + 32;
  v213 = 0;
  v214 = v57;
  v58 = sub_1D8E87E88();
  if (v213 != v214 >> 1)
  {
LABEL_7:
    v69 = sub_1D917951C();
    v70 = swift_allocError();
    v72 = v71;
    v73 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
    *v72 = &type metadata for EpisodeListType;
    sub_1D917983C();
    sub_1D91794FC();
    (*(*(v69 - 8) + 104))(v72, *MEMORY[0x1E69E6AF8], v69);
    v208 = v70;
    swift_willThrow();
LABEL_8:
    (*(v154 + 8))(v46, v42);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v207);
  }

  switch(v58)
  {
    case 0:
      LOBYTE(v209) = 0;
      sub_1D8F99858();
      v59 = v152;
      v60 = v208;
      sub_1D917982C();
      v208 = v60;
      if (v60)
      {
        goto LABEL_8;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B70, &qword_1D918C4A0);
      sub_1D8F9C788(&qword_1ECAB80E8, &qword_1ECAB2C98);
      v61 = v151;
      v62 = v208;
      sub_1D91798FC();
      v63 = v154;
      v208 = v62;
      v64 = &v187;
      if (v62)
      {
        goto LABEL_34;
      }

      (*(v155 + 8))(v59, v61);
      v66 = *(v63 + 8);
      v65 = v63 + 8;
      v66(v46, v42);
      swift_unknownObjectRelease();
      v67 = 0;
      LOBYTE(v59) = v209;
      v204 = (v209 >> 8);
      v205 = 0;
      v68 = v209 & 0xFFFFFFFFFFFF0000;
      goto LABEL_51;
    case 1:
      LOBYTE(v209) = 1;
      sub_1D8F99804();
      v59 = v153;
      v106 = v208;
      sub_1D917982C();
      v208 = v106;
      if (v106)
      {
        goto LABEL_8;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B70, &qword_1D918C4A0);
      sub_1D8F9C788(&qword_1ECAB80E8, &qword_1ECAB2C98);
      v61 = v159;
      v107 = v208;
      sub_1D91798FC();
      v63 = v154;
      v208 = v107;
      v64 = &v190;
      if (v107)
      {
LABEL_34:
        (*(*(v64 - 32) + 1))(v59, v61);
        (*(v63 + 8))(v46, v42);
        goto LABEL_9;
      }

      (*(v158 + 8))(v59, v61);
      v133 = *(v63 + 8);
      v65 = v63 + 8;
      v133(v46, v42);
      swift_unknownObjectRelease();
      LOBYTE(v59) = v209;
      v204 = (v209 >> 8);
      v205 = 0;
      v68 = v209 & 0xFFFFFFFFFFFF0000;
      v67 = 1;
      goto LABEL_51;
    case 2:
      LOBYTE(v209) = 2;
      sub_1D8F997B0();
      v93 = v190;
      v94 = v208;
      sub_1D917982C();
      v208 = v94;
      if (v94)
      {
        goto LABEL_8;
      }

      (*(v156 + 8))(v93, v157);
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v203 = 0;
      v204 = 0;
      v201 = 0;
      v65 = 0;
      v51 = 0;
      v52 = 0;
      v46 = 0;
      LOBYTE(v42) = 0;
      v205 = 0;
      LOBYTE(v59) = 0;
      v68 = 0;
      v67 = 10;
      goto LABEL_51;
    case 3:
      LOBYTE(v209) = 3;
      sub_1D8F9975C();
      v52 = v50;
      v98 = v208;
      sub_1D917982C();
      v208 = v98;
      if (v98)
      {
        goto LABEL_8;
      }

      v99 = v163;
      v65 = v50;
      v100 = sub_1D91798BC();
      v208 = 0;
      v101 = *(v161 + 8);
      v59 = v100;
      v203 = v102;
      v101(v52, v99);
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v204 = (v59 >> 8);
      v205 = 0;
      v68 = v59 & 0xFFFFFFFFFFFF0000;
      v67 = 2;
      goto LABEL_51;
    case 4:
      LOBYTE(v209) = 4;
      sub_1D8F99708();
      v87 = v191;
      v88 = v208;
      sub_1D917982C();
      v208 = v88;
      if (v88)
      {
        goto LABEL_8;
      }

      (*(v162 + 8))(v87, v164);
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v203 = 0;
      v204 = 0;
      v201 = 0;
      v65 = 0;
      v51 = 0;
      v52 = 0;
      v46 = 0;
      LOBYTE(v42) = 0;
      v205 = 0;
      v68 = 0;
      v67 = 10;
      LOBYTE(v59) = 1;
      goto LABEL_51;
    case 5:
      LOBYTE(v209) = 5;
      sub_1D8F996B4();
      v52 = v192;
      v109 = v208;
      sub_1D917982C();
      v208 = v109;
      if (v109)
      {
        goto LABEL_8;
      }

      v110 = v160;
      v111 = sub_1D91798BC();
      v208 = 0;
      v59 = v111;
      v65 = v134;
      (*(v165 + 8))(v52, v110);
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v205 = 0;
      v203 = v65;
      v204 = (v59 >> 8);
      v68 = v59 & 0xFFFFFFFFFFFF0000;
      v67 = 3;
      goto LABEL_51;
    case 6:
      LOBYTE(v209) = 6;
      sub_1D8F99660();
      v52 = v51;
      v114 = v208;
      sub_1D917982C();
      v208 = v114;
      if (v114)
      {
        goto LABEL_8;
      }

      LOBYTE(v209) = 0;
      v51 = v166;
      v115 = sub_1D91798BC();
      v208 = 0;
      v137 = v115;
      v139 = v138;
      type metadata accessor for MTEpisodeTypeFilter(0);
      v215 = 1;
      sub_1D8F9C824(&qword_1ECAB80E0, type metadata accessor for MTEpisodeTypeFilter);
      v140 = v208;
      sub_1D91798FC();
      v208 = v140;
      v141 = v189;
      if (v140)
      {

        (*(v141 + 8))(v52, v51);
        goto LABEL_8;
      }

      v144 = v137;
      v59 = v42;
      v201 = v209;
      v215 = 2;
      v65 = v52;
      v145 = sub_1D917985C();
      v208 = 0;
      LOBYTE(v42) = v145;
      (*(v189 + 8))(v52, v51);
      (*(v154 + 8))(v46, v59);
      swift_unknownObjectRelease();
      v205 = 0;
      LOBYTE(v59) = v144;
      v203 = v139;
      v204 = (v144 >> 8);
      v68 = v144 & 0xFFFFFFFFFFFF0000;
      v67 = 4;
      goto LABEL_51;
    case 7:
      LOBYTE(v209) = 7;
      sub_1D8F9960C();
      v103 = v208;
      sub_1D917982C();
      v208 = v103;
      if (v103)
      {
        goto LABEL_8;
      }

      LOBYTE(v209) = 0;
      v104 = v169;
      v105 = sub_1D91798BC();
      v208 = 0;
      v59 = v105;
      v129 = v128;
      LOBYTE(v209) = 1;
      v130 = sub_1D91798BC();
      v208 = 0;
      v201 = v130;
      v202 = v131;
      LOBYTE(v209) = 2;
      v132 = sub_1D917984C();
      v208 = 0;
      v199 = v132;
      v200 = v147;
      LOBYTE(v209) = 3;
      v148 = sub_1D91798BC();
      v197 = v149;
      v198 = v148;
      v208 = 0;
      (*(v188 + 8))(v52, v104);
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v203 = v129;
      v204 = (v59 >> 8);
      v68 = v59 & 0xFFFFFFFFFFFF0000;
      LOBYTE(v42) = v202;
      v205 = v202 & 0xFFFFFFFFFFFFFF00;
      v67 = 5;
      v65 = v199;
      v51 = v200;
      v46 = v197;
      v52 = v198;
      goto LABEL_51;
    case 8:
      LOBYTE(v209) = 8;
      sub_1D8CFFF48();
      v118 = v194;
      v119 = v208;
      sub_1D917982C();
      v208 = v119;
      if (v119)
      {
        goto LABEL_8;
      }

      LOBYTE(v209) = 0;
      v120 = v171;
      v121 = sub_1D91798CC();
      v122 = v154;
      v208 = 0;
      v142 = v121;
      LOBYTE(v209) = 1;
      v143 = sub_1D91798CC();
      v208 = 0;
      v65 = v143;
      (*(v170 + 8))(v118, v120);
      v146 = *(v122 + 8);
      v52 = v122 + 8;
      v146(v46, v42);
      swift_unknownObjectRelease();
      v68 = 0;
      LOBYTE(v59) = v142 & 1;
      v204 = (v65 & 1);
      v205 = 0;
      v67 = 6;
      goto LABEL_51;
    case 9:
      LOBYTE(v209) = 9;
      sub_1D8F995B8();
      v91 = v193;
      v92 = v208;
      sub_1D917982C();
      v208 = v92;
      if (v92)
      {
        goto LABEL_8;
      }

      (*(v167 + 8))(v91, v168);
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v203 = 0;
      v204 = 0;
      v201 = 0;
      v65 = 0;
      v51 = 0;
      v52 = 0;
      v46 = 0;
      LOBYTE(v42) = 0;
      v205 = 0;
      v68 = 0;
      v67 = 10;
      LOBYTE(v59) = 2;
      goto LABEL_51;
    case 10:
      LOBYTE(v209) = 10;
      sub_1D8F99564();
      v116 = v195;
      v117 = v208;
      sub_1D917982C();
      v208 = v117;
      if (v117)
      {
        goto LABEL_8;
      }

      (*(v172 + 8))(v116, v173);
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v203 = 0;
      v204 = 0;
      v201 = 0;
      v65 = 0;
      v51 = 0;
      v52 = 0;
      v46 = 0;
      LOBYTE(v42) = 0;
      v205 = 0;
      v68 = 0;
      v67 = 10;
      LOBYTE(v59) = 3;
      goto LABEL_51;
    case 11:
      LOBYTE(v209) = 11;
      sub_1D8F99510();
      v85 = v196;
      v86 = v208;
      sub_1D917982C();
      v208 = v86;
      if (v86)
      {
        goto LABEL_8;
      }

      (*(v174 + 8))(v85, v175);
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v203 = 0;
      v204 = 0;
      v201 = 0;
      v65 = 0;
      v51 = 0;
      v52 = 0;
      v46 = 0;
      LOBYTE(v42) = 0;
      v205 = 0;
      v68 = 0;
      v67 = 10;
      LOBYTE(v59) = 4;
      goto LABEL_51;
    case 12:
      LOBYTE(v209) = 12;
      sub_1D8F994BC();
      v89 = v197;
      v90 = v208;
      sub_1D917982C();
      v208 = v90;
      if (v90)
      {
        goto LABEL_8;
      }

      (*(v176 + 8))(v89, v177);
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v203 = 0;
      v204 = 0;
      v201 = 0;
      v65 = 0;
      v51 = 0;
      v52 = 0;
      v46 = 0;
      LOBYTE(v42) = 0;
      v205 = 0;
      v68 = 0;
      v67 = 10;
      LOBYTE(v59) = 5;
      goto LABEL_51;
    case 13:
      LOBYTE(v209) = 13;
      sub_1D8F99468();
      v112 = v198;
      v113 = v208;
      sub_1D917982C();
      v208 = v113;
      if (v113)
      {
        goto LABEL_8;
      }

      (*(v178 + 8))(v112, v179);
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v203 = 0;
      v204 = 0;
      v201 = 0;
      v65 = 0;
      v51 = 0;
      v52 = 0;
      v46 = 0;
      LOBYTE(v42) = 0;
      v205 = 0;
      v68 = 0;
      v67 = 10;
      LOBYTE(v59) = 6;
      goto LABEL_51;
    case 14:
      LOBYTE(v209) = 14;
      sub_1D8F99414();
      v81 = v199;
      v82 = v208;
      sub_1D917982C();
      v208 = v82;
      if (v82)
      {
        goto LABEL_8;
      }

      v83 = v181;
      v65 = v81;
      v84 = sub_1D91798BC();
      v208 = 0;
      v123 = *(v180 + 8);
      v52 = v84;
      v203 = v124;
      v123(v81, v83);
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v204 = (v52 >> 8);
      v205 = 0;
      v68 = v52 & 0xFFFFFFFFFFFF0000;
      v67 = 7;
      goto LABEL_47;
    case 15:
      LOBYTE(v209) = 15;
      sub_1D8F9936C();
      v95 = v208;
      sub_1D917982C();
      v208 = v95;
      if (v95)
      {
        goto LABEL_8;
      }

      LOBYTE(v209) = 0;
      v96 = v186;
      v97 = sub_1D91798BC();
      v208 = 0;
      v52 = v97;
      v59 = v125;
      v215 = 1;
      sub_1D8F9C734();
      v126 = v208;
      sub_1D91798FC();
      v127 = v187;
      v208 = v126;
      if (v126)
      {

        (*(v127 + 8))(v53, v96);
        goto LABEL_8;
      }

      v65 = v187 + 8;
      (*(v187 + 8))(v53, v96);
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v203 = v59;
      LOBYTE(v59) = v52;
      v201 = v209;
      LOBYTE(v42) = v210;
      v204 = (v52 >> 8);
      v205 = 0;
      v68 = v52 & 0xFFFFFFFFFFFF0000;
      v67 = 8;
LABEL_51:
      result = __swift_destroy_boxed_opaque_existential_1Tm(v207);
      *v55 = v68 | (v204 << 8) | v59;
      v135 = v205 | v42;
      v136 = v201;
      *(v55 + 8) = v203;
      *(v55 + 16) = v136;
      *(v55 + 24) = v135;
      *(v55 + 32) = v65;
      *(v55 + 40) = v51;
      *(v55 + 48) = v52;
      *(v55 + 56) = v46;
      *(v55 + 64) = v67;
      break;
    case 16:
      LOBYTE(v209) = 16;
      sub_1D8F99318();
      v75 = v54;
      v76 = v208;
      sub_1D917982C();
      v208 = v76;
      if (v76)
      {
        goto LABEL_8;
      }

      v77 = v183;
      v65 = v75;
      v78 = sub_1D91798BC();
      v208 = 0;
      v79 = *(v184 + 8);
      v52 = v78;
      v203 = v80;
      v79(v75, v77);
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v204 = (v52 >> 8);
      v205 = 0;
      v68 = v52 & 0xFFFFFFFFFFFF0000;
      v67 = 9;
LABEL_47:
      LOBYTE(v59) = v52;
      goto LABEL_51;
    case 17:
      LOBYTE(v209) = 17;
      sub_1D8F992C4();
      v59 = v200;
      v108 = v208;
      sub_1D917982C();
      v208 = v108;
      if (v108)
      {
        goto LABEL_8;
      }

      (*(v182 + 8))(v59, v185);
      (*(v154 + 8))(v46, v42);
      swift_unknownObjectRelease();
      v203 = 0;
      v204 = 0;
      v201 = 0;
      v65 = 0;
      v51 = 0;
      v52 = 0;
      v46 = 0;
      LOBYTE(v42) = 0;
      v205 = 0;
      v68 = 0;
      v67 = 10;
      LOBYTE(v59) = 7;
      goto LABEL_51;
    default:
      goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D8F9C028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8F9C080(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xA)
  {
    *result = a2 - 10;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 10;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for EpisodeListType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EpisodeListType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8F9C210()
{
  result = qword_1ECAB7FC8;
  if (!qword_1ECAB7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FC8);
  }

  return result;
}

unint64_t sub_1D8F9C268()
{
  result = qword_1ECAB7FD0;
  if (!qword_1ECAB7FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FD0);
  }

  return result;
}

unint64_t sub_1D8F9C2C0()
{
  result = qword_1ECAB7FD8;
  if (!qword_1ECAB7FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FD8);
  }

  return result;
}

unint64_t sub_1D8F9C318()
{
  result = qword_1ECAB7FE0;
  if (!qword_1ECAB7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FE0);
  }

  return result;
}

unint64_t sub_1D8F9C370()
{
  result = qword_1ECAB7FE8;
  if (!qword_1ECAB7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FE8);
  }

  return result;
}

unint64_t sub_1D8F9C3C8()
{
  result = qword_1ECAB7FF0;
  if (!qword_1ECAB7FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FF0);
  }

  return result;
}

unint64_t sub_1D8F9C420()
{
  result = qword_1ECAB7FF8;
  if (!qword_1ECAB7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB7FF8);
  }

  return result;
}

unint64_t sub_1D8F9C478()
{
  result = qword_1ECAB8000;
  if (!qword_1ECAB8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8000);
  }

  return result;
}

unint64_t sub_1D8F9C4D0()
{
  result = qword_1ECAB8008;
  if (!qword_1ECAB8008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8008);
  }

  return result;
}

unint64_t sub_1D8F9C528()
{
  result = qword_1ECAB8010;
  if (!qword_1ECAB8010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8010);
  }

  return result;
}

unint64_t sub_1D8F9C580()
{
  result = qword_1ECAB8018;
  if (!qword_1ECAB8018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8018);
  }

  return result;
}

unint64_t sub_1D8F9C5D8()
{
  result = qword_1ECAB8020;
  if (!qword_1ECAB8020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8020);
  }

  return result;
}

unint64_t sub_1D8F9C630()
{
  result = qword_1ECAB8028;
  if (!qword_1ECAB8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8028);
  }

  return result;
}

unint64_t sub_1D8F9C688()
{
  result = qword_1ECAB8030;
  if (!qword_1ECAB8030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8030);
  }

  return result;
}

unint64_t sub_1D8F9C6E0()
{
  result = qword_1ECAB8038;
  if (!qword_1ECAB8038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8038);
  }

  return result;
}

unint64_t sub_1D8F9C734()
{
  result = qword_1ECAB80D8;
  if (!qword_1ECAB80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB80D8);
  }

  return result;
}

uint64_t sub_1D8F9C788(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4B70, &qword_1D918C4A0);
    sub_1D8F9C824(a2, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8F9C824(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8F9C888(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F65646976;
  if (v2 != 1)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6F69647561;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x6F65646976;
  if (*a2 != 1)
  {
    v8 = 0x6C616E7265747865;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F69647561;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8F9C97C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F9CA18()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8F9CAA0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F9CB38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18PodcastsFoundation16EpisodeMediaTypeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1D8F9CB68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F65646976;
  if (v2 != 1)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F69647561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D8F9CBD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8F9CD5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t EpisodeMediaType.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D9179B5C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t _s18PodcastsFoundation16EpisodeMediaTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1D917980C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D8F9CD5C(uint64_t *a1)
{
  v3 = sub_1D917950C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v21[-4] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v10 = sub_1D9179ADC();
    v13 = v10;
    v14 = v11;
    v15 = v10 == 0x6F69647561 && v11 == 0xE500000000000000;
    if (v15 || (sub_1D9179ACC() & 1) != 0)
    {

      v9 = 0;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      return v9;
    }

    if (v13 == 0x6F65646976 && v14 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
    {

      v9 = 1;
      goto LABEL_12;
    }

    if (v13 == 0x6C616E7265747865 && v14 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0 || v13 == 0x746E656D75636F64 && v14 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
    {

      v9 = 2;
      goto LABEL_12;
    }

    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D9179ECC();
    strcpy(v21, "Unknown case ");
    v21[7] = -4864;
    MEMORY[0x1DA7298F0](v13, v14);

    sub_1D91794FC();
    v9 = sub_1D917951C();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
    *v18 = &type metadata for EpisodeMediaType;
    (*(v4 + 16))(&v18[v19], v7, v3);
    (*(*(v9 - 8) + 104))(v18, *MEMORY[0x1E69E6B08], v9);
    swift_willThrow();
    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

unint64_t sub_1D8F9D104()
{
  result = qword_1ECAB80F8;
  if (!qword_1ECAB80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB80F8);
  }

  return result;
}

uint64_t sub_1D8F9D16C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = EpisodeSortType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == EpisodeSortType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();
  }

  return v8 & 1;
}

uint64_t sub_1D8F9D1F4()
{
  v1 = *v0;
  sub_1D9179DBC();
  EpisodeSortType.rawValue.getter(v1);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F9D258()
{
  EpisodeSortType.rawValue.getter(*v0);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8F9D2AC()
{
  v1 = *v0;
  sub_1D9179DBC();
  EpisodeSortType.rawValue.getter(v1);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F9D30C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18PodcastsFoundation15EpisodeSortTypeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t EpisodeSortType.ascendingSortType.getter(uint64_t result)
{
  if (result <= 9u && ((0x285u >> result) & 1) != 0)
  {
    return byte_1D919E586[result];
  }

  return result;
}

uint64_t EpisodeSortType.baseSortType.getter(uint64_t result)
{
  if (result - 1) <= 9u && ((0x285u >> (result - 1)))
  {
    return byte_1D919E590[(result - 1)];
  }

  return result;
}

Swift::Bool __swiftcall EpisodeSortType.baseSortTypeMatches(other:)(PodcastsFoundation::EpisodeSortType other)
{
  v2 = other;
  if (v1 - 1) <= 9u && ((0x285u >> (v1 - 1)))
  {
    v1 = byte_1D919E590[(v1 - 1)];
  }

  if (other - 1) <= 9u && ((0x285u >> (other - 1)))
  {
    v2 = byte_1D919E590[(other - 1)];
  }

  v3 = EpisodeSortType.rawValue.getter(v1);
  v5 = v4;
  if (v3 == EpisodeSortType.rawValue.getter(v2) && v5 == v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();
  }

  return v7 & 1;
}

uint64_t EpisodeSortType.playDescriptors.getter(char a1)
{
  if (!a1)
  {
    v1 = [objc_opt_self() sortDescriptorsForPubDateAscending_];
    goto LABEL_5;
  }

  if (a1 == 4)
  {
    v1 = [objc_opt_self() seasonSortDescriptors_];
LABEL_5:
    v2 = v1;
    sub_1D8D28BC8();
    v3 = sub_1D91785FC();

    return v3;
  }

  return EpisodeSortType.descriptors.getter(a1);
}

uint64_t _s18PodcastsFoundation15EpisodeSortTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1D9179C6C();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D8F9D638()
{
  result = qword_1ECAB8100;
  if (!qword_1ECAB8100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8100);
  }

  return result;
}

uint64_t EpisodeType.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x73756E6F62;
  }

  if (a1 == 1)
  {
    return 1819047270;
  }

  return 0x72656C69617274;
}

uint64_t sub_1D8F9D6EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1819047270;
  if (v2 != 1)
  {
    v4 = 0x72656C69617274;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73756E6F62;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1819047270;
  if (*a2 != 1)
  {
    v8 = 0x72656C69617274;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73756E6F62;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D9179ACC();
  }

  return v11 & 1;
}

uint64_t sub_1D8F9D7DC()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F9D874()
{
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8F9D8F8()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8F9D98C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s18PodcastsFoundation11EpisodeTypeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_1D8F9D9BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1819047270;
  if (v2 != 1)
  {
    v5 = 0x72656C69617274;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73756E6F62;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t _s18PodcastsFoundation11EpisodeTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1D917980C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1D8F9DB10()
{
  result = qword_1ECAB8108;
  if (!qword_1ECAB8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8108);
  }

  return result;
}

unint64_t sub_1D8F9DB74()
{
  result = qword_1EDCD5768[0];
  if (!qword_1EDCD5768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD5768);
  }

  return result;
}

BOOL EpisodeUserFilter.skipsTrailersDuringPlayback.getter(uint64_t a1, char a2)
{
  v2 = EpisodeUserFilter.canonical.getter(a1, a2);
  if (v3)
  {
    v4 = v2 >= 2;
  }

  else
  {
    v4 = 0;
  }

  return !v4;
}

id EpisodeUserFilter.basePredicate.getter(uint64_t a1, char a2)
{
  v2 = EpisodeUserFilter.canonical.getter(a1, a2);
  if (v3)
  {
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v4 = [objc_opt_self() predicateForAllBookmarkedEpisodes];
      }

      else if (v2 == 4)
      {
        v4 = [objc_opt_self() predicateForVisuallyPlayed_];
      }

      else
      {
        v4 = [objc_opt_self() predicateForSubscriptionOnly];
      }
    }

    else if (v2)
    {
      if (v2 == 1)
      {
        v4 = [objc_opt_self() predicateForVisuallyPlayed_];
      }

      else
      {
        v4 = [objc_opt_self() predicateForDownloaded:1 excludeHidden:1];
      }
    }

    else
    {
      v4 = [objc_opt_self() truePredicate];
    }
  }

  else
  {
    v4 = [objc_opt_self() predicateForSeasonNumber_];
  }

  return v4;
}

BOOL static EpisodeUserFilter.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        v4 = *(a1 + 16);
        v5 = *(a3 + 16);
        v6 = *(a3 + 24);
        v7 = *(a1 + 24);
        sub_1D8F95C9C(v5, *(a3 + 24));
        LOBYTE(v4) = static EpisodeUserFilter.== infix(_:_:)(v4, v7, v5, v6);
        sub_1D8F95794(v5, v6);
        return v4 & 1;
      }

      return 0;
    }

    if (a1 > 2)
    {
      if (a1 == 3)
      {
        if (a4 != 2 || a3 != 3)
        {
          return 0;
        }
      }

      else if (a1 == 4)
      {
        if (a4 != 2 || a3 != 4)
        {
          return 0;
        }
      }

      else if (a4 != 2 || a3 != 5)
      {
        return 0;
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        if (a4 != 2 || a3 != 1)
        {
          return 0;
        }
      }

      else if (a4 != 2 || a3 != 2)
      {
        return 0;
      }
    }

    else if (a4 != 2 || a3)
    {
      return 0;
    }

    return 1;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a1 == a3;
  }
}

uint64_t EpisodeUserFilter.title.getter(uint64_t a1, char a2)
{
  v2 = EpisodeUserFilter.canonical.getter(a1, a2);
  v3 = v2;
  if (v4)
  {
    if (v2 > 2)
    {
      if (v2 == 4)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (!v2)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_17;
      }

      if (v2 == 1)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_17;
      }
    }

    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

LABEL_17:
    swift_once();
    return sub_1D917693C();
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7360];
  *(v5 + 16) = xmmword_1D9189080;
  v7 = MEMORY[0x1E69E73D8];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v3;
  v8 = sub_1D91781DC();

  return v8;
}

uint64_t sub_1D8F9E128(uint64_t a1)
{
  v2 = sub_1D8F9FD34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E164(uint64_t a1)
{
  v2 = sub_1D8F9FD34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E1A0(uint64_t a1)
{
  v2 = sub_1D8F9FC38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E1DC(uint64_t a1)
{
  v2 = sub_1D8F9FC38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E218()
{
  v1 = *v0;
  v2 = 0x6E6F73616573;
  v3 = 0x6269726373627573;
  if (v1 != 6)
  {
    v3 = 0x657461647075;
  }

  v4 = 0x6B72616D6B6F6F62;
  if (v1 != 4)
  {
    v4 = 0x646579616C70;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x646579616C706E75;
  if (v1 != 2)
  {
    v5 = 0x64616F6C6E776F64;
  }

  if (*v0)
  {
    v2 = 0x6F736970456C6C61;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D8F9E320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FA051C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8F9E348(uint64_t a1)
{
  v2 = sub_1D8F9FAE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E384(uint64_t a1)
{
  v2 = sub_1D8F9FAE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E3C0(uint64_t a1)
{
  v2 = sub_1D8F9FC8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E3FC(uint64_t a1)
{
  v2 = sub_1D8F9FC8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E438(uint64_t a1)
{
  v2 = sub_1D8F9FBE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E474(uint64_t a1)
{
  v2 = sub_1D8F9FBE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E4BC(uint64_t a1)
{
  v2 = sub_1D8F9FD88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E4F8(uint64_t a1)
{
  v2 = sub_1D8F9FD88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E534(uint64_t a1)
{
  v2 = sub_1D8F9FB90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E570(uint64_t a1)
{
  v2 = sub_1D8F9FB90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E5AC(uint64_t a1)
{
  v2 = sub_1D8F9FCE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E5E8(uint64_t a1)
{
  v2 = sub_1D8F9FCE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8F9E624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D8F9E6A4(uint64_t a1)
{
  v2 = sub_1D8F9FB3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F9E6E0(uint64_t a1)
{
  v2 = sub_1D8F9FB3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EpisodeUserFilter.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v68 = a3;
  v69 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8110, &qword_1D919E6C8);
  v66 = *(v4 - 8);
  v67 = v4;
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8118, &qword_1D919E6D0);
  v63 = *(v7 - 8);
  v64 = v7;
  v8 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8120, &qword_1D919E6D8);
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v59 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8128, &qword_1D919E6E0);
  v57 = *(v13 - 8);
  v58 = v13;
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v49 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8130, &qword_1D919E6E8);
  v54 = *(v16 - 8);
  v55 = v16;
  v17 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v49 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8138, &qword_1D919E6F0);
  v51 = *(v52 - 8);
  v19 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v49 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8140, &qword_1D919E6F8);
  v49 = *(v21 - 8);
  v22 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v49 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8148, &qword_1D919E700);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v49 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8150, &qword_1D919E708);
  v31 = *(v30 - 8);
  v70 = v30;
  v71 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v49 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F9FAE8();
  sub_1D9179F1C();
  if (!v68)
  {
    LOBYTE(v72) = 0;
    sub_1D8F9FD88();
    v42 = v70;
    sub_1D917993C();
    sub_1D9179A0C();
    (*(v26 + 8))(v29, v25);
    return (*(v71 + 8))(v34, v42);
  }

  if (v68 == 1)
  {
    v36 = *(v69 + 16);
    v37 = *(v69 + 24);
    LOBYTE(v72) = 7;
    sub_1D8F95C9C(v36, v37);
    sub_1D8F9FB3C();
    v38 = v65;
    v39 = v70;
    sub_1D917993C();
    v72 = v36;
    v73 = v37;
    sub_1D8F993C0();
    v40 = v67;
    sub_1D91799FC();
    (*(v66 + 8))(v38, v40);
    (*(v71 + 8))(v34, v39);
    return sub_1D8F95794(v36, v37);
  }

  if (v69 > 2)
  {
    if (v69 == 3)
    {
      LOBYTE(v72) = 4;
      sub_1D8F9FC38();
      v45 = v56;
      v44 = v70;
      sub_1D917993C();
      v47 = v57;
      v46 = v58;
    }

    else if (v69 == 4)
    {
      LOBYTE(v72) = 5;
      sub_1D8F9FBE4();
      v45 = v59;
      v44 = v70;
      sub_1D917993C();
      v47 = v60;
      v46 = v61;
    }

    else
    {
      LOBYTE(v72) = 6;
      sub_1D8F9FB90();
      v45 = v62;
      v44 = v70;
      sub_1D917993C();
      v47 = v63;
      v46 = v64;
    }

    goto LABEL_16;
  }

  if (!v69)
  {
    LOBYTE(v72) = 1;
    sub_1D8F9FD34();
    v48 = v70;
    sub_1D917993C();
    (*(v49 + 8))(v24, v21);
    return (*(v71 + 8))(v34, v48);
  }

  if (v69 != 1)
  {
    LOBYTE(v72) = 3;
    sub_1D8F9FC8C();
    v45 = v53;
    v44 = v70;
    sub_1D917993C();
    v47 = v54;
    v46 = v55;
LABEL_16:
    (*(v47 + 8))(v45, v46);
    return (*(v71 + 8))(v34, v44);
  }

  LOBYTE(v72) = 2;
  sub_1D8F9FCE0();
  v43 = v50;
  v44 = v70;
  sub_1D917993C();
  (*(v51 + 8))(v43, v52);
  return (*(v71 + 8))(v34, v44);
}

uint64_t EpisodeUserFilter.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = *(a2 + 16);
      v5 = *(a2 + 24);
      MEMORY[0x1DA72B390](7);
      sub_1D8F95C9C(v4, v5);
      EpisodeUserFilter.hash(into:)(a1, v4, v5);

      return sub_1D8F95794(v4, v5);
    }

    else
    {
      if (a2 > 2)
      {
        if (a2 == 3)
        {
          v8 = 4;
        }

        else if (a2 == 4)
        {
          v8 = 5;
        }

        else
        {
          v8 = 6;
        }
      }

      else if (a2)
      {
        if (a2 == 1)
        {
          v8 = 2;
        }

        else
        {
          v8 = 3;
        }
      }

      else
      {
        v8 = 1;
      }

      return MEMORY[0x1DA72B390](v8);
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    return MEMORY[0x1DA72B3C0](a2);
  }
}

uint64_t EpisodeUserFilter.hashValue.getter(uint64_t a1, char a2)
{
  sub_1D9179DBC();
  EpisodeUserFilter.hash(into:)(v5, a1, a2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F9F118()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D9179DBC();
  EpisodeUserFilter.hash(into:)(v4, v1, v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F9F174()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D9179DBC();
  EpisodeUserFilter.hash(into:)(v4, v1, v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F9F1C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D8FA07B4(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t EpisodeUserFilter.canonical.getter(uint64_t a1, char a2)
{
  v2 = a1;
  if (a2 == 1)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    sub_1D8F95C9C(v3, *(a1 + 24));
    v2 = EpisodeUserFilter.canonical.getter(v3, v4);
    sub_1D8F95794(v3, v4);
  }

  else
  {
    sub_1D8F95C9C(a1, a2);
  }

  return v2;
}

Swift::String __swiftcall EpisodeUserFilter.shelfTitle(hidesPlayedEpisodes:)(Swift::Bool hidesPlayedEpisodes)
{
  v3 = v2;
  v4 = v1;
  v6 = EpisodeUserFilter.canonical.getter(v1, v2);
  if (v7 != 2 || v6 != 0)
  {
    sub_1D8F95794(v6, v7);
LABEL_7:

    v9 = EpisodeUserFilter.title.getter(v4, v3);
    goto LABEL_13;
  }

  if (hidesPlayedEpisodes)
  {
    goto LABEL_7;
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  v9 = sub_1D917693C();
LABEL_13:
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t EpisodeUserFilter.emptyMessage.getter(uint64_t a1, char a2)
{
  v2 = EpisodeUserFilter.canonical.getter(a1, a2);
  v3 = v2;
  if (v4)
  {
    if (v2 > 2)
    {
      if (v2 == 4)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (!v2)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_17;
      }

      if (v2 == 1)
      {
        if (qword_1EDCD5F00 == -1)
        {
          return sub_1D917693C();
        }

        goto LABEL_17;
      }
    }

    if (qword_1EDCD5F00 == -1)
    {
      return sub_1D917693C();
    }

LABEL_17:
    swift_once();
    return sub_1D917693C();
  }

  if (qword_1EDCD5F00 != -1)
  {
    swift_once();
  }

  sub_1D917693C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7360];
  *(v5 + 16) = xmmword_1D9189080;
  v7 = MEMORY[0x1E69E73D8];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v3;
  v8 = sub_1D91781DC();

  return v8;
}

uint64_t EpisodeUserFilter.symbolName.getter(uint64_t a1, char a2)
{
  v2 = EpisodeUserFilter.canonical.getter(a1, a2);
  if (v3 != 2)
  {
    goto LABEL_10;
  }

  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        return 0x6B72616D6B6F6F62;
      case 4:
        return 0xD000000000000010;
      case 5:
        return 0;
    }

LABEL_10:
    sub_1D8F95794(v2, v3);
    return 0;
  }

  if (!v2)
  {
    return 0xD000000000000012;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      return 0x6F642E776F727261;
    }

    goto LABEL_10;
  }

  return 0x656C63726963;
}

uint64_t static EpisodeUserFilter.defaultFilter(seasonToShow:hidesPlayedEpisodes:)(uint64_t a1, char a2, char a3)
{
  if (a2)
  {
    return a3 & 1;
  }

  return result;
}

char *static EpisodeUserFilter.allAvailableFilters(seasonNumbers:hasBookmarkedEpisodes:hasSubscriberEpisodes:)(char *a1, char a2, char a3)
{
  v20 = a1;
  v21 = MEMORY[0x1E69E7CC0];

  sub_1D8D48E60(&v20);
  v5 = v20;
  v6 = *(v20 + 2);
  if (v6)
  {
    v7 = MEMORY[0x1E69E7CC0];
    while (v6 <= *(v5 + 2))
    {
      v8 = *&v5[8 * v6 + 24];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D8ECD008(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_1D8ECD008((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      v11 = &v7[16 * v10];
      *(v11 + 4) = v8;
      v11[40] = 0;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:

    v21 = v7;
  }

  else
  {
  }

  sub_1D8E2FF44(&unk_1F5460F28);
  v12 = v21;
  if (a2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D8ECD008(0, *(v12 + 2) + 1, 1, v12);
    }

    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_1D8ECD008((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[16 * v14];
    *(v15 + 4) = 3;
    v15[40] = 2;
  }

  if (a3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1D8ECD008(0, *(v12 + 2) + 1, 1, v12);
    }

    v17 = *(v12 + 2);
    v16 = *(v12 + 3);
    if (v17 >= v16 >> 1)
    {
      v12 = sub_1D8ECD008((v16 > 1), v17 + 1, 1, v12);
    }

    *(v12 + 2) = v17 + 1;
    v18 = &v12[16 * v17];
    *(v18 + 4) = 5;
    v18[40] = 2;
  }

  return v12;
}

BOOL sub_1D8F9F9D0(uint64_t a1, char a2)
{
  v2 = EpisodeUserFilter.canonical.getter(a1, a2);
  v4 = v3;
  if (v3)
  {
    sub_1D8F95794(v2, v3);
  }

  return v4 == 0;
}

uint64_t EpisodeUserFilter.flipUpdateState.getter(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    sub_1D8F95C9C(v2, v3);
    v4 = EpisodeUserFilter.canonical.getter(v2, v3);
    sub_1D8F95794(v2, v3);
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    sub_1D8F95C9C(a1, a2);
  }

  return v4;
}

unint64_t sub_1D8F9FAE8()
{
  result = qword_1ECAB8158;
  if (!qword_1ECAB8158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8158);
  }

  return result;
}

unint64_t sub_1D8F9FB3C()
{
  result = qword_1ECAB8160;
  if (!qword_1ECAB8160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8160);
  }

  return result;
}

unint64_t sub_1D8F9FB90()
{
  result = qword_1ECAB8168;
  if (!qword_1ECAB8168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8168);
  }

  return result;
}

unint64_t sub_1D8F9FBE4()
{
  result = qword_1ECAB8170;
  if (!qword_1ECAB8170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8170);
  }

  return result;
}

unint64_t sub_1D8F9FC38()
{
  result = qword_1ECAB8178;
  if (!qword_1ECAB8178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8178);
  }

  return result;
}

unint64_t sub_1D8F9FC8C()
{
  result = qword_1ECAB8180;
  if (!qword_1ECAB8180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8180);
  }

  return result;
}

unint64_t sub_1D8F9FCE0()
{
  result = qword_1ECAB8188;
  if (!qword_1ECAB8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8188);
  }

  return result;
}

unint64_t sub_1D8F9FD34()
{
  result = qword_1ECAB8190;
  if (!qword_1ECAB8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8190);
  }

  return result;
}

unint64_t sub_1D8F9FD88()
{
  result = qword_1ECAB8198;
  if (!qword_1ECAB8198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8198);
  }

  return result;
}

uint64_t sub_1D8F9FDDC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D8F5DE20(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1D8FA0328((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D8ECC734(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1D8ECC734((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1D8FA0328((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1D8FA0328(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D8FA051C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F73616573 && a2 == 0xE600000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F736970456C6C61 && a2 == 0xEB00000000736564 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646579616C706E75 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEA00000000006465 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEA00000000006465 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646579616C70 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000007265 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D8FA07B4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8250, &qword_1D919F050);
  v72 = *(v2 - 8);
  v73 = v2;
  v3 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v76 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8258, &qword_1D919F058);
  v70 = *(v5 - 8);
  v71 = v5;
  v6 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8260, &qword_1D919F060);
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8268, &qword_1D919F068);
  v12 = *(v11 - 8);
  v66 = v11;
  v67 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v57 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8270, &qword_1D919F070);
  v65 = *(v64 - 8);
  v15 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v75 = &v57 - v16;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8278, &qword_1D919F078);
  v63 = *(v60 - 8);
  v17 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v74 = &v57 - v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8280, &qword_1D919F080);
  v61 = *(v62 - 8);
  v19 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v21 = &v57 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8288, &qword_1D919F088);
  v59 = *(v22 - 8);
  v23 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v57 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8290, &unk_1D919F090);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v57 - v29;
  v31 = a1[3];
  v32 = a1[4];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D8F9FAE8();
  v33 = v80;
  sub_1D9179EEC();
  if (!v33)
  {
    v57 = v25;
    v58 = v21;
    v35 = v77;
    v34 = v78;
    v36 = v79;
    v80 = v27;
    v37 = sub_1D917991C();
    v38 = (2 * *(v37 + 16)) | 1;
    v82 = v37;
    v83 = v37 + 32;
    v84 = 0;
    v85 = v38;
    v39 = sub_1D8E87EBC();
    if (v39 == 8 || v84 != v85 >> 1)
    {
      v42 = v30;
      v43 = v26;
      v26 = sub_1D917951C();
      swift_allocError();
      v45 = v44;
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
      *v45 = &type metadata for EpisodeUserFilter;
      sub_1D917983C();
      sub_1D91794FC();
      (*(*(v26 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v80 + 8))(v42, v43);
      swift_unknownObjectRelease();
    }

    else if (v39 > 3u)
    {
      if (v39 > 5u)
      {
        v51 = v80;
        if (v39 == 6)
        {
          v86 = 6;
          sub_1D8F9FB90();
          sub_1D917982C();
          (*(v70 + 8))(v36, v71);
          (*(v51 + 8))(v30, v26);
          swift_unknownObjectRelease();
          v26 = 5;
        }

        else
        {
          v86 = 7;
          sub_1D8F9FB3C();
          v54 = v76;
          sub_1D917982C();
          v55 = v26;
          v26 = swift_allocObject();
          sub_1D8F9C734();
          v56 = v73;
          sub_1D91798FC();
          (*(v72 + 8))(v54, v56);
          (*(v51 + 8))(v30, v55);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v48 = v80;
        if (v39 == 4)
        {
          v86 = 4;
          sub_1D8F9FC38();
          sub_1D917982C();
          (*(v67 + 8))(v35, v66);
          (*(v48 + 8))(v30, v26);
          swift_unknownObjectRelease();
          v26 = 3;
        }

        else
        {
          v86 = 5;
          sub_1D8F9FBE4();
          sub_1D917982C();
          (*(v68 + 8))(v34, v69);
          (*(v48 + 8))(v30, v26);
          swift_unknownObjectRelease();
          v26 = 4;
        }
      }
    }

    else if (v39 > 1u)
    {
      v49 = v80;
      if (v39 == 2)
      {
        v86 = 2;
        sub_1D8F9FCE0();
        v50 = v74;
        sub_1D917982C();
        (*(v63 + 8))(v50, v60);
        (*(v49 + 8))(v30, v26);
        swift_unknownObjectRelease();
        v26 = 1;
      }

      else
      {
        v86 = 3;
        sub_1D8F9FC8C();
        v53 = v75;
        sub_1D917982C();
        (*(v65 + 8))(v53, v64);
        (*(v49 + 8))(v30, v26);
        swift_unknownObjectRelease();
        v26 = 2;
      }
    }

    else if (v39)
    {
      v86 = 1;
      sub_1D8F9FD34();
      v52 = v58;
      sub_1D917982C();
      (*(v61 + 8))(v52, v62);
      (*(v80 + 8))(v30, v26);
      swift_unknownObjectRelease();
      v26 = 0;
    }

    else
    {
      v86 = 0;
      sub_1D8F9FD88();
      v40 = v57;
      sub_1D917982C();
      v41 = v26;
      v26 = sub_1D917990C();
      (*(v59 + 8))(v40, v22);
      (*(v80 + 8))(v30, v41);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v81);
  return v26;
}

unint64_t sub_1D8FA13C4()
{
  result = qword_1ECAB81A0;
  if (!qword_1ECAB81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81A0);
  }

  return result;
}

unint64_t sub_1D8FA14BC()
{
  result = qword_1ECAB81A8;
  if (!qword_1ECAB81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81A8);
  }

  return result;
}

unint64_t sub_1D8FA1514()
{
  result = qword_1ECAB81B0;
  if (!qword_1ECAB81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81B0);
  }

  return result;
}

unint64_t sub_1D8FA156C()
{
  result = qword_1ECAB81B8;
  if (!qword_1ECAB81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81B8);
  }

  return result;
}

unint64_t sub_1D8FA15C4()
{
  result = qword_1ECAB81C0;
  if (!qword_1ECAB81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81C0);
  }

  return result;
}

unint64_t sub_1D8FA161C()
{
  result = qword_1ECAB81C8;
  if (!qword_1ECAB81C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81C8);
  }

  return result;
}

unint64_t sub_1D8FA1674()
{
  result = qword_1ECAB81D0;
  if (!qword_1ECAB81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81D0);
  }

  return result;
}

unint64_t sub_1D8FA16CC()
{
  result = qword_1ECAB81D8;
  if (!qword_1ECAB81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81D8);
  }

  return result;
}

unint64_t sub_1D8FA1724()
{
  result = qword_1ECAB81E0;
  if (!qword_1ECAB81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81E0);
  }

  return result;
}

unint64_t sub_1D8FA177C()
{
  result = qword_1ECAB81E8;
  if (!qword_1ECAB81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81E8);
  }

  return result;
}

unint64_t sub_1D8FA17D4()
{
  result = qword_1ECAB81F0;
  if (!qword_1ECAB81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81F0);
  }

  return result;
}

unint64_t sub_1D8FA182C()
{
  result = qword_1ECAB81F8;
  if (!qword_1ECAB81F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB81F8);
  }

  return result;
}

unint64_t sub_1D8FA1884()
{
  result = qword_1ECAB8200;
  if (!qword_1ECAB8200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8200);
  }

  return result;
}

unint64_t sub_1D8FA18DC()
{
  result = qword_1ECAB8208;
  if (!qword_1ECAB8208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8208);
  }

  return result;
}

unint64_t sub_1D8FA1934()
{
  result = qword_1ECAB8210;
  if (!qword_1ECAB8210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8210);
  }

  return result;
}

unint64_t sub_1D8FA198C()
{
  result = qword_1ECAB8218;
  if (!qword_1ECAB8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8218);
  }

  return result;
}

unint64_t sub_1D8FA19E4()
{
  result = qword_1ECAB8220;
  if (!qword_1ECAB8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8220);
  }

  return result;
}

unint64_t sub_1D8FA1A3C()
{
  result = qword_1ECAB8228;
  if (!qword_1ECAB8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8228);
  }

  return result;
}

unint64_t sub_1D8FA1A94()
{
  result = qword_1ECAB8230;
  if (!qword_1ECAB8230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8230);
  }

  return result;
}

unint64_t sub_1D8FA1AEC()
{
  result = qword_1ECAB8238;
  if (!qword_1ECAB8238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8238);
  }

  return result;
}

unint64_t sub_1D8FA1B44()
{
  result = qword_1ECAB8240;
  if (!qword_1ECAB8240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8240);
  }

  return result;
}

unint64_t sub_1D8FA1B9C()
{
  result = qword_1ECAB8248;
  if (!qword_1ECAB8248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8248);
  }

  return result;
}

Swift::Int64 sub_1D8FA1BFC(void *a1)
{
  v2 = MTPodcastHidesPlayedEpisodesResolved([a1 hidesPlayedEpisodes]);
  v3 = MTPodcast.episodeUserFilter.getter();
  if (v4 == -1)
  {
    v7 = [a1 smartPlayEpisode];
    v10 = MTPodcast.seasonToShow(episodeToPlay:)(v7);
    value = v10.value;
    is_nil = v10.is_nil;

    if (is_nil)
    {
      return v2;
    }

    else
    {
      return value;
    }
  }

  else
  {
    v5 = v3;

    return v5;
  }
}

uint64_t ModelError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

unint64_t sub_1D8FA1D24()
{
  result = qword_1ECAB8298;
  if (!qword_1ECAB8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8298);
  }

  return result;
}

PodcastsFoundation::ShowType_optional __swiftcall ShowType.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D917980C();

  if (v1 == 1)
  {
    v2.value = PodcastsFoundation_ShowType_serial;
  }

  else
  {
    v2.value = PodcastsFoundation_ShowType_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t ShowType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C6169726573;
  }

  else
  {
    return 0x6369646F73697065;
  }
}

uint64_t sub_1D8FA1E10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C6169726573;
  }

  else
  {
    v4 = 0x6369646F73697065;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6C6169726573;
  }

  else
  {
    v6 = 0x6369646F73697065;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();
  }

  return v9 & 1;
}

uint64_t sub_1D8FA1EB4()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FA1F34()
{
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D8FA1FA0()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D8FA201C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D917980C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1D8FA207C(uint64_t *a1@<X8>)
{
  v2 = 0x6369646F73697065;
  if (*v1)
  {
    v2 = 0x6C6169726573;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ShowType.mtPodcastShowType.getter(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_1D8FA217C()
{
  result = qword_1ECAB82A0;
  if (!qword_1ECAB82A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB82A0);
  }

  return result;
}

unint64_t sub_1D8FA21E0()
{
  result = qword_1EDCD1298[0];
  if (!qword_1EDCD1298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD1298);
  }

  return result;
}

uint64_t ArtworkAspectRule.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

unint64_t sub_1D8FA22C4()
{
  result = qword_1ECAB82A8;
  if (!qword_1ECAB82A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB82A8);
  }

  return result;
}

unint64_t ArtworkContent.inMemorySize.getter()
{
  v1 = v0;
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArtworkContent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8E55148(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = sub_1D9176BCC();
    v13 = String.inMemorySize.getter(v11, v12);

    (*(v3 + 8))(v6, v2);
    return v13;
  }

  result = *v10;
  v15 = v10[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = v10[1];
      sub_1D8D7567C(result, v15);
      return BYTE6(v17);
    }

    goto LABEL_10;
  }

  if (v16 != 2)
  {
    goto LABEL_14;
  }

  v19 = *(result + 16);
  v18 = *(result + 24);
  sub_1D8D7567C(result, v15);
  result = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
    __break(1u);
LABEL_10:
    v20 = HIDWORD(result);
    v21 = result;
    result = sub_1D8D7567C(result, v15);
    if (__OFSUB__(v20, v21))
    {
      __break(1u);
      return result;
    }

    result = v20 - v21;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return result;
  }

  __break(1u);
LABEL_14:
  sub_1D8D7567C(result, v15);
  return 0;
}

CGImageRef ArtworkContent.cgImage.getter()
{
  v0 = sub_1D8FA253C();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v0, 0, 0);

  return ImageAtIndex;
}

CGImageSourceRef sub_1D8FA253C()
{
  v1 = v0;
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArtworkContent();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8E55148(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    v11 = sub_1D9176B1C();
    v12 = CGImageSourceCreateWithURL(v11, 0);

    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v13 = *v10;
    v14 = v10[1];
    v15 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
    v12 = CGImageSourceCreateWithData(v15, 0);

    sub_1D8D7567C(v13, v14);
  }

  return v12;
}

uint64_t sub_1D8FA26DC()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 1635017060;
  }

  *v0;
  return result;
}

uint64_t sub_1D8FA2708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D8FA27E4(uint64_t a1)
{
  v2 = sub_1D8FA2DCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA2820(uint64_t a1)
{
  v2 = sub_1D8FA2DCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FA285C(uint64_t a1)
{
  v2 = sub_1D8FA2E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA2898(uint64_t a1)
{
  v2 = sub_1D8FA2E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FA28D4(uint64_t a1)
{
  v2 = sub_1D8FA2E20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA2910(uint64_t a1)
{
  v2 = sub_1D8FA2E20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkContent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB82B0, &qword_1D919F350);
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v32 - v4;
  v5 = sub_1D9176C2C();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB82B8, &qword_1D919F358);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for ArtworkContent();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB82C0, &qword_1D919F360);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FA2DCC();
  sub_1D9179F1C();
  sub_1D8E55148(v41, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v37;
    v23 = v35;
    v24 = v15;
    v25 = v38;
    (*(v37 + 32))(v35, v24, v38);
    LOBYTE(v42) = 1;
    sub_1D8FA2E20();
    v26 = v36;
    sub_1D917993C();
    sub_1D8EF24D0(&qword_1ECAB2CB0);
    v27 = v40;
    sub_1D91799FC();
    (*(v39 + 8))(v26, v27);
    (*(v22 + 8))(v23, v25);
    return (*(v17 + 8))(v20, v16);
  }

  else
  {
    v30 = *v15;
    v29 = v15[1];
    LOBYTE(v42) = 0;
    sub_1D8FA2E74();
    sub_1D917993C();
    v42 = v30;
    v43 = v29;
    sub_1D8FA2EC8();
    v31 = v34;
    sub_1D91799FC();
    (*(v33 + 8))(v11, v31);
    (*(v17 + 8))(v20, v16);
    return sub_1D8D7567C(v30, v29);
  }
}

unint64_t sub_1D8FA2DCC()
{
  result = qword_1ECAB82C8;
  if (!qword_1ECAB82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB82C8);
  }

  return result;
}

unint64_t sub_1D8FA2E20()
{
  result = qword_1ECAB82D0;
  if (!qword_1ECAB82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB82D0);
  }

  return result;
}

unint64_t sub_1D8FA2E74()
{
  result = qword_1ECAB82D8;
  if (!qword_1ECAB82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB82D8);
  }

  return result;
}

unint64_t sub_1D8FA2EC8()
{
  result = qword_1ECAB82E0;
  if (!qword_1ECAB82E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB82E0);
  }

  return result;
}

uint64_t ArtworkContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB82E8, &qword_1D919F368);
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v56 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB82F0, &qword_1D919F370);
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v46 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB82F8, &unk_1D919F378);
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v46 - v12;
  v14 = type metadata accessor for ArtworkContent();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D8FA2DCC();
  v26 = v57;
  sub_1D9179EEC();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v63);
  }

  v47 = v20;
  v48 = v23;
  v57 = v17;
  v28 = v55;
  v27 = v56;
  v29 = v54;
  v30 = sub_1D917991C();
  v31 = (2 * *(v30 + 16)) | 1;
  v59 = v30;
  v60 = v30 + 32;
  v61 = 0;
  v62 = v31;
  v32 = sub_1D8E89BE0();
  v33 = v13;
  if (v32 == 2 || v61 != v62 >> 1)
  {
    v35 = sub_1D917951C();
    swift_allocError();
    v37 = v36;
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
    *v37 = v14;
    sub_1D917983C();
    sub_1D91794FC();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    (*(v29 + 8))(v13, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v63);
  }

  if (v32)
  {
    LOBYTE(v58) = 1;
    sub_1D8FA2E20();
    v34 = v27;
    sub_1D917982C();
    sub_1D9176C2C();
    sub_1D8EF24D0(&qword_1ECAB2C98);
    v41 = v57;
    v42 = v52;
    sub_1D91798FC();
    (*(v53 + 8))(v34, v42);
    (*(v29 + 8))(v33, v10);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v44 = v41;
  }

  else
  {
    LOBYTE(v58) = 0;
    sub_1D8FA2E74();
    sub_1D917982C();
    sub_1D8FA35A8();
    v40 = v51;
    sub_1D91798FC();
    (*(v50 + 8))(v28, v40);
    (*(v29 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v43 = v47;
    *v47 = v58;
    swift_storeEnumTagMultiPayload();
    v44 = v43;
  }

  v45 = v48;
  sub_1D8FA3544(v44, v48);
  sub_1D8FA3544(v45, v49);
  return __swift_destroy_boxed_opaque_existential_1Tm(v63);
}

uint64_t sub_1D8FA3544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkContent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8FA35A8()
{
  result = qword_1ECAB8300;
  if (!qword_1ECAB8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8300);
  }

  return result;
}

unint64_t sub_1D8FA3664()
{
  result = qword_1ECAB8308;
  if (!qword_1ECAB8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8308);
  }

  return result;
}

unint64_t sub_1D8FA36BC()
{
  result = qword_1ECAB8310;
  if (!qword_1ECAB8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8310);
  }

  return result;
}

unint64_t sub_1D8FA3714()
{
  result = qword_1ECAB8318;
  if (!qword_1ECAB8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8318);
  }

  return result;
}

unint64_t sub_1D8FA376C()
{
  result = qword_1ECAB8320;
  if (!qword_1ECAB8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8320);
  }

  return result;
}

unint64_t sub_1D8FA37C4()
{
  result = qword_1ECAB8328;
  if (!qword_1ECAB8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8328);
  }

  return result;
}

unint64_t sub_1D8FA381C()
{
  result = qword_1ECAB8330;
  if (!qword_1ECAB8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8330);
  }

  return result;
}

unint64_t sub_1D8FA3874()
{
  result = qword_1ECAB8338;
  if (!qword_1ECAB8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8338);
  }

  return result;
}

unint64_t sub_1D8FA38CC()
{
  result = qword_1ECAB8340;
  if (!qword_1ECAB8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8340);
  }

  return result;
}

unint64_t sub_1D8FA3924()
{
  result = qword_1ECAB8348;
  if (!qword_1ECAB8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8348);
  }

  return result;
}

_BYTE *static ArtworkCrop.from(_:)@<X0>(_BYTE *result@<X0>, __int16 *a2@<X8>)
{
  switch(*result)
  {
    case 1:
      if (qword_1ECAB2AF8 != -1)
      {
        v13 = a2;
        result = swift_once();
        a2 = v13;
      }

      v2 = &word_1ECAB2B02;
      break;
    case 2:
      if (qword_1ECAB3610 != -1)
      {
        v8 = a2;
        result = swift_once();
        a2 = v8;
      }

      v2 = &word_1ECAFBB60;
      break;
    case 3:
      if (qword_1ECAB3618 != -1)
      {
        v10 = a2;
        result = swift_once();
        a2 = v10;
      }

      v2 = &word_1ECAFBB62;
      break;
    case 4:
      if (qword_1ECAB3620 != -1)
      {
        v5 = a2;
        result = swift_once();
        a2 = v5;
      }

      v2 = &word_1ECAFBB64;
      break;
    case 5:
      if (qword_1ECAB3628 != -1)
      {
        v14 = a2;
        result = swift_once();
        a2 = v14;
      }

      v2 = &word_1ECAFBB66;
      break;
    case 6:
      if (qword_1ECAB2B10 != -1)
      {
        v16 = a2;
        result = swift_once();
        a2 = v16;
      }

      v2 = &word_1ECAFBB40;
      break;
    case 7:
      if (qword_1ECAB3638 != -1)
      {
        v11 = a2;
        result = swift_once();
        a2 = v11;
      }

      v2 = &word_1ECAFBB68;
      break;
    case 8:
      if (qword_1ECAB3640 != -1)
      {
        v18 = a2;
        result = swift_once();
        a2 = v18;
      }

      v2 = &word_1ECAFBB6A;
      break;
    case 9:
      if (qword_1ECAB3648 != -1)
      {
        v7 = a2;
        result = swift_once();
        a2 = v7;
      }

      v2 = &word_1ECAFBB6C;
      break;
    case 0xA:
      if (qword_1ECAB3650 != -1)
      {
        v17 = a2;
        result = swift_once();
        a2 = v17;
      }

      v2 = &word_1ECAFBB6E;
      break;
    case 0xB:
      if (qword_1ECAB3658 != -1)
      {
        v4 = a2;
        result = swift_once();
        a2 = v4;
      }

      v2 = &word_1ECAFBB70;
      break;
    case 0xC:
      if (qword_1ECAB3660 != -1)
      {
        v6 = a2;
        result = swift_once();
        a2 = v6;
      }

      v2 = &word_1ECAFBB72;
      break;
    case 0xD:
      if (qword_1ECAB3668 != -1)
      {
        v15 = a2;
        result = swift_once();
        a2 = v15;
      }

      v2 = &word_1ECAB8354;
      break;
    case 0xE:
      if (qword_1ECAB2B30 != -1)
      {
        v3 = a2;
        result = swift_once();
        a2 = v3;
      }

      v2 = &word_1ECAB2B3E;
      break;
    case 0xF:
      if (qword_1ECAB3678 != -1)
      {
        v9 = a2;
        result = swift_once();
        a2 = v9;
      }

      v2 = &word_1ECAB8358;
      break;
    default:
      if (qword_1EDCD78A0 != -1)
      {
        v12 = a2;
        result = swift_once();
        a2 = v12;
      }

      v2 = &word_1EDCD78A8;
      break;
  }

  *a2 = *v2;
  return result;
}

uint64_t sub_1D8FA3FA8()
{
  if (*v0)
  {
    result = 0x4D746E65746E6F63;
  }

  else
  {
    result = 0x65646F43706F7263;
  }

  *v0;
  return result;
}

uint64_t sub_1D8FA3FEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65646F43706F7263 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEB0000000065646FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D8FA40CC(uint64_t a1)
{
  v2 = sub_1D8FA46C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA4108(uint64_t a1)
{
  v2 = sub_1D8FA46C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkCrop.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8360, &qword_1D919F760);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-4] - v8;
  sub_1D8CFD9D8(a1, v15);
  sub_1D8FA461C();
  sub_1D8FA4670();
  sub_1D917858C();
  if (v2)
  {

    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D8FA46C4();
    sub_1D9179EEC();
    v16 = 0;
    sub_1D91798FC();
    v12 = v15[0];
    v16 = 1;
    sub_1D8FA4718();
    sub_1D91798FC();
    (*(v6 + 8))(v9, v5);
    v13 = v15[0];
  }

  else
  {
    static ArtworkCrop.from(_:)(&v16, v15);
    v12 = v15[0];
    v13 = HIBYTE(v15[0]);
  }

  *a2 = v12;
  a2[1] = v13;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ArtworkCrop.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8368, &qword_1D919F768);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FA46C4();
  sub_1D9179F1C();
  v15 = v9;
  v14 = 0;
  sub_1D8FA476C();
  sub_1D91799FC();
  if (!v2)
  {
    v13 = 1;
    sub_1D91799EC();
  }

  return (*(v5 + 8))(v8, v4);
}

BOOL _s18PodcastsFoundation11ArtworkCropV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v12 = *a1;
  v11 = *a2;
  v4 = CropCode.rawValue.getter();
  v6 = v5;
  if (v4 == CropCode.rawValue.getter() && v6 == v7)
  {

    return v2 == v3;
  }

  v9 = sub_1D9179ACC();

  result = 0;
  if (v9)
  {
    return v2 == v3;
  }

  return result;
}

unint64_t sub_1D8FA461C()
{
  result = qword_1ECAB1108;
  if (!qword_1ECAB1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1108);
  }

  return result;
}

unint64_t sub_1D8FA4670()
{
  result = qword_1ECAB1110;
  if (!qword_1ECAB1110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1110);
  }

  return result;
}

unint64_t sub_1D8FA46C4()
{
  result = qword_1ECAB2B18;
  if (!qword_1ECAB2B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B18);
  }

  return result;
}

unint64_t sub_1D8FA4718()
{
  result = qword_1ECAB2AB8;
  if (!qword_1ECAB2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AB8);
  }

  return result;
}

unint64_t sub_1D8FA476C()
{
  result = qword_1ECAB1118;
  if (!qword_1ECAB1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1118);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkCrop(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 65292 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65292 < 0xFF0000)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65292;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65292;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65292;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkCrop(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65292 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65292 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 16) + 1;
    *result = a2 - 244;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8FA4918()
{
  result = qword_1ECAB8370;
  if (!qword_1ECAB8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8370);
  }

  return result;
}

unint64_t sub_1D8FA4970()
{
  result = qword_1ECAB2B20;
  if (!qword_1ECAB2B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B20);
  }

  return result;
}

unint64_t sub_1D8FA49C8()
{
  result = qword_1ECAB2B28;
  if (!qword_1ECAB2B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2B28);
  }

  return result;
}

uint64_t ArtworkFormat.fileExtension.getter(unsigned __int8 a1)
{
  v1 = 6778480;
  v2 = 1734701162;
  if (a1 != 2)
  {
    v2 = 1667851624;
  }

  if (a1)
  {
    v1 = 6778986;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

id static ArtworkFormat.heicEncodingSupported()()
{
  v0 = CGImageDestinationCopyTypeIdentifiers();
  v1 = [(__CFArray *)v0 containsObject:*MEMORY[0x1E69874A0]];

  return v1;
}

uint64_t sub_1D8FA4AD4()
{
  v1 = 6778480;
  v2 = 1734701162;
  if (*v0 != 2)
  {
    v2 = 1667851624;
  }

  if (*v0)
  {
    v1 = 6778986;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8FA4B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FA545C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FA4B54(uint64_t a1)
{
  v2 = sub_1D8FA51E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA4B90(uint64_t a1)
{
  v2 = sub_1D8FA51E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FA4BCC(uint64_t a1)
{
  v2 = sub_1D8FA523C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA4C08(uint64_t a1)
{
  v2 = sub_1D8FA523C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FA4C44(uint64_t a1)
{
  v2 = sub_1D8FA5290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA4C80(uint64_t a1)
{
  v2 = sub_1D8FA5290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FA4CBC(uint64_t a1)
{
  v2 = sub_1D8FA52E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA4CF8(uint64_t a1)
{
  v2 = sub_1D8FA52E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8FA4D34(uint64_t a1)
{
  v2 = sub_1D8FA5338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA4D70(uint64_t a1)
{
  v2 = sub_1D8FA5338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkFormat.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8378, &qword_1D919F940);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8380, &qword_1D919F948);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8388, &qword_1D919F950);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8390, &qword_1D919F958);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8398, &qword_1D919F960);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FA51E8();
  sub_1D9179F1C();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_1D8FA5290();
      v12 = v29;
      sub_1D917993C();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_1D8FA523C();
      v12 = v32;
      sub_1D917993C();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_1D8FA52E4();
    sub_1D917993C();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_1D8FA5338();
  sub_1D917993C();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_1D8FA51E8()
{
  result = qword_1ECAB2940[0];
  if (!qword_1ECAB2940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECAB2940);
  }

  return result;
}

unint64_t sub_1D8FA523C()
{
  result = qword_1ECAB2908;
  if (!qword_1ECAB2908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2908);
  }

  return result;
}

unint64_t sub_1D8FA5290()
{
  result = qword_1ECAB83A0;
  if (!qword_1ECAB83A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB83A0);
  }

  return result;
}

unint64_t sub_1D8FA52E4()
{
  result = qword_1ECAB83A8;
  if (!qword_1ECAB83A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB83A8);
  }

  return result;
}

unint64_t sub_1D8FA5338()
{
  result = qword_1ECAB83B0;
  if (!qword_1ECAB83B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB83B0);
  }

  return result;
}

uint64_t ArtworkFormat.hashValue.getter(unsigned __int8 a1)
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](a1);
  return sub_1D9179E1C();
}

void *sub_1D8FA5414@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8FA55BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D8FA545C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6778480 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6778986 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1734701162 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1667851624 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_1D8FA55BC(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB83C8, &qword_1D919FE20);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB83D0, &qword_1D919FE28);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB83D8, &qword_1D919FE30);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB83E0, &qword_1D919FE38);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB83E8, &unk_1D919FE40);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1D8FA51E8();
  v21 = v50;
  sub_1D9179EEC();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_1D917991C();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_1D8E89BD8();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_1D8FA52E4();
        v36 = v40;
        sub_1D917982C();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_1D8FA5338();
        v29 = v40;
        sub_1D917982C();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1Tm(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_1D8FA5290();
      v35 = v40;
      sub_1D917982C();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_1D8FA523C();
      v37 = v40;
      sub_1D917982C();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_1D917951C();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50) + 48);
  *v15 = &type metadata for ArtworkFormat;
  sub_1D917983C();
  sub_1D91794FC();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  return v15;
}

unint64_t sub_1D8FA5C00()
{
  result = qword_1ECAB83B8;
  if (!qword_1ECAB83B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB83B8);
  }

  return result;
}

unint64_t sub_1D8FA5CA8()
{
  result = qword_1ECAB83C0;
  if (!qword_1ECAB83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB83C0);
  }

  return result;
}

unint64_t sub_1D8FA5D00()
{
  result = qword_1ECAB2910;
  if (!qword_1ECAB2910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2910);
  }

  return result;
}

unint64_t sub_1D8FA5D58()
{
  result = qword_1ECAB2918;
  if (!qword_1ECAB2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2918);
  }

  return result;
}

unint64_t sub_1D8FA5DB0()
{
  result = qword_1ECAB2920;
  if (!qword_1ECAB2920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2920);
  }

  return result;
}

unint64_t sub_1D8FA5E08()
{
  result = qword_1ECAB2928;
  if (!qword_1ECAB2928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2928);
  }

  return result;
}

unint64_t sub_1D8FA5E60()
{
  result = qword_1ECAB28E8;
  if (!qword_1ECAB28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28E8);
  }

  return result;
}

unint64_t sub_1D8FA5EB8()
{
  result = qword_1ECAB28F0;
  if (!qword_1ECAB28F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28F0);
  }

  return result;
}

unint64_t sub_1D8FA5F10()
{
  result = qword_1ECAB28F8;
  if (!qword_1ECAB28F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28F8);
  }

  return result;
}

unint64_t sub_1D8FA5F68()
{
  result = qword_1ECAB2900;
  if (!qword_1ECAB2900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2900);
  }

  return result;
}

unint64_t sub_1D8FA5FC0()
{
  result = qword_1ECAB2930;
  if (!qword_1ECAB2930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2930);
  }

  return result;
}

unint64_t sub_1D8FA6018()
{
  result = qword_1ECAB2938;
  if (!qword_1ECAB2938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2938);
  }

  return result;
}

uint64_t static ArtworkModel.placeholder.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCD78A0 != -1)
  {
    v4 = a1;
    result = swift_once();
    a1 = v4;
  }

  v1 = word_1EDCD78A8;
  v2 = HIBYTE(word_1EDCD78A8);
  if (qword_1EDCD7890 != -1)
  {
    v6 = a1;
    result = swift_once();
    a1 = v6;
  }

  v3 = byte_1EDCD7898;
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x80000001D91D0CE0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0x40A7700000000000;
  *(a1 + 48) = 0x40A7700000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = -1;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0;
  *(a1 + 96) = -1;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1279;
  *(a1 + 130) = v1;
  *(a1 + 131) = v2;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = v3;
  *(a1 + 153) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return result;
}

double ArtworkModel.size.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t ArtworkModel.template.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ArtworkModel.libraryEntity.getter()
{
  v1 = *(v0 + 16);
  sub_1D8D614C4(v1, *(v0 + 24), *(v0 + 32));
  return v1;
}

void *ArtworkModel.backgroundColor.getter()
{
  v1 = *(v0 + 56);
  sub_1D8FA7CC8(v1, *(v0 + 64));
  return v1;
}

uint64_t ArtworkModel.accessibilityTitle.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t ArtworkModel.imageStoreIdentifier.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t ArtworkModel.isMonogram.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D917839C();
}

uint64_t ArtworkModel.isSystemGlyph.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D917839C();
}

uint64_t ArtworkModel.systemGlyphName.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - v3;
  v5 = *v0;
  v6 = v0[1];
  if ((sub_1D917839C() & 1) == 0)
  {
    return 0;
  }

  sub_1D9176BFC();
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v4, 1, v7) == 1)
  {
    sub_1D8D08A50(v4, &unk_1ECAB5910, &qword_1D9188C90);
    return 0;
  }

  v10 = sub_1D9176BAC();
  (*(v8 + 8))(v4, v7);
  return v10;
}

uint64_t ArtworkModel.init(glyphName:accessibilityTitle:isCustomSymbol:isMulticolorSymbol:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, char a3@<W4>, char a4@<W5>, uint64_t a5@<X8>)
{
  MEMORY[0x1DA7298F0]();

  if (qword_1EDCD78A0 != -1)
  {
    result = swift_once();
  }

  v11 = word_1EDCD78A8;
  v12 = HIBYTE(word_1EDCD78A8);
  if (qword_1EDCD7890 != -1)
  {
    result = swift_once();
  }

  v13 = byte_1EDCD7898;
  *a5 = 0x2F2F3A6870796C67;
  *(a5 + 8) = 0xE800000000000000;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = -1;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 40) = 0;
  *(a5 + 64) = -1;
  *(a5 + 72) = 0;
  *(a5 + 80) = -1;
  *(a5 + 88) = 0;
  *(a5 + 96) = -1;
  *(a5 + 104) = 0;
  *(a5 + 112) = -1;
  *(a5 + 120) = 0;
  *(a5 + 128) = 1279;
  *(a5 + 130) = v11;
  *(a5 + 131) = v12;
  *(a5 + 136) = a1;
  *(a5 + 144) = a2;
  *(a5 + 152) = v13;
  *(a5 + 153) = a3 & 1;
  *(a5 + 154) = a4 & 1;
  *(a5 + 160) = 0;
  *(a5 + 168) = 0;
  return result;
}

uint64_t ArtworkModel.with(size:format:)@<X0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = *v5;
  v7 = v5[1];
  v9 = v5[2];
  v10 = v5[3];
  v11 = *(v5 + 5);
  v12 = *(v5 + 6);
  v13 = v5[7];
  v14 = *(v5 + 11);
  v30[0] = *(v5 + 9);
  v30[1] = v14;
  v31[0] = *(v5 + 13);
  *(v31 + 9) = *(v5 + 113);
  v15 = *(v5 + 129);
  v16 = *(v5 + 131);
  v17 = v5[17];
  v18 = v5[18];
  v19 = *(v5 + 153);
  v20 = *(v5 + 154);
  if ((a3 & 1) == 0)
  {
    v12 = a2;
    v11 = a1;
  }

  if (a4 == 4)
  {
    v21 = *(v5 + 152);
  }

  else
  {
    v21 = a4;
  }

  v22 = *(v5 + 32);
  v23 = *(v5 + 64);
  *&v29[7] = *(v5 + 9);
  *&v29[23] = *(v5 + 11);
  *&v29[39] = *(v5 + 13);
  *&v29[48] = *(v5 + 113);
  *a5 = v8;
  *(a5 + 8) = v7;
  *(a5 + 16) = v9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v22;
  *(a5 + 40) = v11;
  *(a5 + 48) = v12;
  *(a5 + 56) = v13;
  *(a5 + 64) = v23;
  v24 = *v29;
  v25 = *&v29[16];
  v26 = *&v29[32];
  *(a5 + 113) = *&v29[48];
  *(a5 + 97) = v26;
  *(a5 + 81) = v25;
  *(a5 + 65) = v24;
  *(a5 + 129) = v15;
  *(a5 + 131) = v16;
  *(a5 + 136) = v17;
  *(a5 + 144) = v18;
  *(a5 + 152) = v21;
  *(a5 + 153) = v19;
  *(a5 + 154) = v20;
  *(a5 + 160) = 0;
  *(a5 + 168) = 0;

  sub_1D8D614C4(v9, v10, v22);
  sub_1D8FA7CC8(v13, v23);
  sub_1D8D614F0(v30, &v28);
}

uint64_t ArtworkModel.with(crop:)@<X0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = *v2;
  v4 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[7];
  v9 = *(v2 + 11);
  v24[0] = *(v2 + 9);
  v24[1] = v9;
  v25[0] = *(v2 + 13);
  *(v25 + 9) = *(v2 + 113);
  v10 = *(v2 + 129);
  v11 = v2[17];
  v12 = v2[18];
  v13 = *(v2 + 152);
  v14 = *(v2 + 153);
  v15 = *(v2 + 154);
  v16 = *(v2 + 32);
  v17 = *(v2 + 64);
  *&v23[7] = *(v2 + 9);
  *&v23[23] = *(v2 + 11);
  *&v23[39] = *(v2 + 13);
  *&v23[48] = *(v2 + 113);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v16;
  *(a2 + 40) = *(v2 + 5);
  *(a2 + 56) = v8;
  *(a2 + 64) = v17;
  v18 = *v23;
  v19 = *&v23[16];
  v20 = *&v23[32];
  *(a2 + 113) = *&v23[48];
  *(a2 + 97) = v20;
  *(a2 + 81) = v19;
  *(a2 + 65) = v18;
  *(a2 + 129) = v10;
  *(a2 + 130) = v3;
  *(a2 + 136) = v11;
  *(a2 + 144) = v12;
  *(a2 + 152) = v13;
  *(a2 + 153) = v14;
  *(a2 + 154) = v15;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;

  sub_1D8D614C4(v6, v7, v16);
  sub_1D8FA7CC8(v8, v17);
  sub_1D8D614F0(v24, &v22);
}

uint64_t ArtworkModel.with(format:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[7];
  v8 = *(v2 + 11);
  v23[0] = *(v2 + 9);
  v23[1] = v8;
  v24[0] = *(v2 + 13);
  *(v24 + 9) = *(v2 + 113);
  v9 = *(v2 + 129);
  v10 = *(v2 + 131);
  v11 = v2[17];
  v12 = v2[18];
  v13 = *(v2 + 153);
  v14 = *(v2 + 154);
  v15 = *(v2 + 32);
  v16 = *(v2 + 64);
  *&v22[7] = *(v2 + 9);
  *&v22[23] = *(v2 + 11);
  *&v22[39] = *(v2 + 13);
  *&v22[48] = *(v2 + 113);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v15;
  *(a2 + 40) = *(v2 + 5);
  *(a2 + 56) = v7;
  *(a2 + 64) = v16;
  v17 = *v22;
  v18 = *&v22[16];
  v19 = *&v22[32];
  *(a2 + 113) = *&v22[48];
  *(a2 + 97) = v19;
  *(a2 + 81) = v18;
  *(a2 + 65) = v17;
  *(a2 + 129) = v9;
  *(a2 + 131) = v10;
  *(a2 + 136) = v11;
  *(a2 + 144) = v12;
  *(a2 + 152) = a1;
  *(a2 + 153) = v13;
  *(a2 + 154) = v14;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;

  sub_1D8D614C4(v5, v6, v15);
  sub_1D8FA7CC8(v7, v16);
  sub_1D8D614F0(v23, &v21);
}

uint64_t ArtworkModel.with(libraryEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  v8 = v4[1];
  v10 = v4[7];
  v11 = *(v4 + 11);
  v26[0] = *(v4 + 9);
  v26[1] = v11;
  v27[0] = *(v4 + 13);
  *(v27 + 9) = *(v4 + 113);
  v12 = *(v4 + 129);
  v13 = *(v4 + 131);
  v14 = v4[17];
  v15 = v4[18];
  v16 = *(v4 + 152);
  v17 = *(v4 + 153);
  v18 = *(v4 + 154);
  v19 = *(v4 + 64);
  *&v25[7] = *(v4 + 9);
  *&v25[23] = *(v4 + 11);
  *&v25[39] = *(v4 + 13);
  *&v25[48] = *(v4 + 113);
  *a4 = v9;
  *(a4 + 8) = v8;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  *(a4 + 40) = *(v4 + 5);
  *(a4 + 56) = v10;
  *(a4 + 64) = v19;
  v20 = *v25;
  v21 = *&v25[16];
  v22 = *&v25[32];
  *(a4 + 113) = *&v25[48];
  *(a4 + 97) = v22;
  *(a4 + 81) = v21;
  *(a4 + 65) = v20;
  *(a4 + 129) = v12;
  *(a4 + 131) = v13;
  *(a4 + 136) = v14;
  *(a4 + 144) = v15;
  *(a4 + 152) = v16;
  *(a4 + 153) = v17;
  *(a4 + 154) = v18;
  *(a4 + 160) = 0;
  *(a4 + 168) = 0;

  sub_1D8FA7CC8(v10, v19);
  sub_1D8D614F0(v26, &v24);

  return sub_1D8D614C4(a1, a2, a3);
}

uint64_t ArtworkModel.hashValue.getter()
{
  sub_1D9179DBC();
  ArtworkModel.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FA6B00(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x74616D726F66;
    v7 = 0x6D6F747375437369;
    if (a1 != 10)
    {
      v7 = 0xD000000000000012;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x656C797473;
    v9 = 1886351971;
    if (a1 != 7)
    {
      v9 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6574616C706D6574;
    v2 = 0x457972617262696CLL;
    v3 = 0x756F72676B636162;
    if (a1 != 4)
    {
      v3 = 0x6F6C6F4374786574;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6874646977;
    if (a1 != 1)
    {
      v4 = 0x746867696568;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D8FA6C94()
{
  sub_1D9179DBC();
  ArtworkModel.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FA6CD8()
{
  sub_1D9179DBC();
  ArtworkModel.hash(into:)();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FA6D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8FA8508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8FA6D50(uint64_t a1)
{
  v2 = sub_1D8FA7CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA6D8C(uint64_t a1)
{
  v2 = sub_1D8FA7CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB83F0, &qword_1D919FE50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FA7CDC();
  sub_1D9179EEC();
  if (!v2)
  {
    LOBYTE(v52) = 0;
    v11 = sub_1D91798BC();
    v13 = v12;
    v62 = v11;
    LOBYTE(v52) = 1;
    sub_1D8FA7D30();
    sub_1D91798FC();
    v14 = v61;
    LOBYTE(v52) = 2;
    sub_1D91798FC();
    v15 = v60;
    LOBYTE(v52) = 3;
    sub_1D8FA7D84();
    sub_1D917989C();
    v17 = v58;
    v44 = v57;
    v43 = v59;
    LOBYTE(v52) = 4;
    sub_1D8FA7DD8();
    sub_1D917989C();
    v42 = v17;
    v41 = v55;
    LODWORD(v17) = v56;
    v51 = 5;
    sub_1D8FA7E40();
    sub_1D917989C();
    v40 = v17;
    v48 = v52;
    v49 = v53;
    *v50 = v54[0];
    *&v50[9] = *(v54 + 9);
    LOBYTE(v46) = 6;
    sub_1D8FA7EA8();
    sub_1D917989C();
    v39 = v47;
    v45 = 7;
    sub_1D8FA7EFC();
    sub_1D917989C();
    if ((v46 & 0xFF00) == 0xD00)
    {
      if (qword_1EDCD78A0 != -1)
      {
        swift_once();
      }

      v38 = word_1EDCD78A8;
      v18 = HIBYTE(word_1EDCD78A8);
    }

    else
    {
      v38 = v46;
      v18 = HIBYTE(v46);
    }

    v37 = v18;
    LOBYTE(v46) = 8;
    v36 = sub_1D917984C();
    v20 = v19;
    v45 = 9;
    sub_1D8FA7F50();
    sub_1D917989C();
    v21 = v46;
    if (v46 == 4)
    {
      v21 = 2;
    }

    v35 = v21;
    LOBYTE(v46) = 10;
    v34 = sub_1D917985C();
    LOBYTE(v46) = 11;
    v22 = sub_1D917985C();
    (*(v6 + 8))(v9, v5);
    v23 = BYTE8(v48);
    if (BYTE8(v48) == 254)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v23 = -1;
      v28 = -1;
      v29 = -1;
      v30 = -1;
    }

    else
    {
      v24 = v48;
      v25 = v49;
      v28 = BYTE8(v49);
      v26 = *v50;
      v29 = v50[8];
      v27 = *&v50[16];
      v30 = v50[24];
    }

    v31 = v34 & 1;
    *a2 = v62;
    *(a2 + 8) = v13;
    v32 = v42;
    *(a2 + 16) = v44;
    *(a2 + 24) = v32;
    *(a2 + 32) = v43;
    *(a2 + 40) = v14;
    *(a2 + 48) = v15;
    *(a2 + 56) = v41;
    *(a2 + 64) = v40;
    *(a2 + 72) = v24;
    *(a2 + 80) = v23;
    *(a2 + 88) = v25;
    *(a2 + 96) = v28;
    *(a2 + 104) = v26;
    *(a2 + 112) = v29;
    *(a2 + 120) = v27;
    *(a2 + 128) = v30;
    *(a2 + 129) = v39;
    *(a2 + 130) = v38;
    *(a2 + 131) = v37;
    *(a2 + 136) = v36;
    *(a2 + 144) = v20;
    *(a2 + 152) = v35;
    *(a2 + 153) = v31;
    *(a2 + 154) = v22 & 1;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t ArtworkModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8400, &qword_1D919FE60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v22 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v33 = v1[2];
  v32 = v10;
  v31 = *(v1 + 32);
  v12 = v1[5];
  v11 = v1[6];
  v30 = v1[7];
  v29 = *(v1 + 64);
  v13 = *(v1 + 11);
  v46 = *(v1 + 9);
  v47 = v13;
  *v48 = *(v1 + 13);
  *&v48[9] = *(v1 + 113);
  v28 = *(v1 + 129);
  v26 = *(v1 + 130);
  v27 = *(v1 + 131);
  v14 = v1[18];
  v24 = v1[17];
  v25 = v14;
  v23 = *(v1 + 152);
  v22[4] = *(v1 + 153);
  v22[3] = *(v1 + 154);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FA7CDC();
  sub_1D9179F1C();
  LOBYTE(v40) = 0;
  v16 = v49;
  sub_1D91799BC();
  if (v16)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = v31;
  v18 = v32;
  v19 = v33;
  v20 = v30;
  *&v40 = v12;
  LOBYTE(v37[0]) = 1;
  sub_1D8FA7FA4();
  sub_1D91799FC();
  *&v40 = v11;
  LOBYTE(v37[0]) = 2;
  sub_1D91799FC();
  *&v40 = v19;
  *(&v40 + 1) = v18;
  LOBYTE(v41) = v17;
  LOBYTE(v37[0]) = 3;
  sub_1D8FA7FF8();
  sub_1D917999C();
  v44 = v20;
  v45 = v29;
  v43 = 4;
  sub_1D8FA804C();
  sub_1D917999C();
  v40 = v46;
  v41 = v47;
  *v42 = *v48;
  *&v42[9] = *&v48[9];
  v39 = 5;
  sub_1D8D614F0(&v46, v37);
  sub_1D8FA80A0();
  sub_1D917999C();
  v37[0] = v40;
  v37[1] = v41;
  *v38 = *v42;
  *&v38[9] = *&v42[9];
  sub_1D8D08A50(v37, &qword_1ECAB83F8, &qword_1D919FE58);
  v34 = v28;
  v36 = 6;
  sub_1D8FA80F4();
  sub_1D917999C();
  v34 = v26;
  v35 = v27;
  v36 = 7;
  sub_1D8FA8148();
  sub_1D91799FC();
  v34 = 8;
  sub_1D917994C();
  v34 = v23;
  v36 = 9;
  sub_1D8FA819C();
  sub_1D91799FC();
  v34 = 10;
  sub_1D91799CC();
  v34 = 11;
  sub_1D91799CC();
  return (*(v4 + 8))(0, v3);
}

uint64_t ArtworkModel.ModelError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

id sub_1D8FA7CC8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1D8D6154C(result, a2);
  }

  return result;
}

unint64_t sub_1D8FA7CDC()
{
  result = qword_1ECAB2A50;
  if (!qword_1ECAB2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A50);
  }

  return result;
}

unint64_t sub_1D8FA7D30()
{
  result = qword_1ECAB2C48;
  if (!qword_1ECAB2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2C48);
  }

  return result;
}

unint64_t sub_1D8FA7D84()
{
  result = qword_1ECAB26E0;
  if (!qword_1ECAB26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB26E0);
  }

  return result;
}

unint64_t sub_1D8FA7DD8()
{
  result = qword_1ECAB1158;
  if (!qword_1ECAB1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1158);
  }

  return result;
}

uint64_t sub_1D8FA7E2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D8DADC60(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1D8FA7E40()
{
  result = qword_1ECAB20F0;
  if (!qword_1ECAB20F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB20F0);
  }

  return result;
}

void sub_1D8FA7E94(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1D8DADC78(a1, a2);
  }
}

unint64_t sub_1D8FA7EA8()
{
  result = qword_1ECAB2A28;
  if (!qword_1ECAB2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A28);
  }

  return result;
}

unint64_t sub_1D8FA7EFC()
{
  result = qword_1ECAB2AE8;
  if (!qword_1ECAB2AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AE8);
  }

  return result;
}

unint64_t sub_1D8FA7F50()
{
  result = qword_1ECAB28D8;
  if (!qword_1ECAB28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28D8);
  }

  return result;
}

unint64_t sub_1D8FA7FA4()
{
  result = qword_1ECAB2C50;
  if (!qword_1ECAB2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2C50);
  }

  return result;
}

unint64_t sub_1D8FA7FF8()
{
  result = qword_1ECAB26E8;
  if (!qword_1ECAB26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB26E8);
  }

  return result;
}

unint64_t sub_1D8FA804C()
{
  result = qword_1ECAB1160;
  if (!qword_1ECAB1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1160);
  }

  return result;
}

unint64_t sub_1D8FA80A0()
{
  result = qword_1ECAB20F8;
  if (!qword_1ECAB20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB20F8);
  }

  return result;
}

unint64_t sub_1D8FA80F4()
{
  result = qword_1ECAB2A38;
  if (!qword_1ECAB2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A38);
  }

  return result;
}

unint64_t sub_1D8FA8148()
{
  result = qword_1ECAB2AF0;
  if (!qword_1ECAB2AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AF0);
  }

  return result;
}

unint64_t sub_1D8FA819C()
{
  result = qword_1ECAB28E0;
  if (!qword_1ECAB28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB28E0);
  }

  return result;
}

unint64_t sub_1D8FA81F4()
{
  result = qword_1ECAB8408;
  if (!qword_1ECAB8408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8408);
  }

  return result;
}

unint64_t sub_1D8FA824C()
{
  result = qword_1ECAB8410;
  if (!qword_1ECAB8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8410);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkModel.CK(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkModel.CK(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8FA8404()
{
  result = qword_1ECAB8418;
  if (!qword_1ECAB8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB8418);
  }

  return result;
}

unint64_t sub_1D8FA845C()
{
  result = qword_1ECAB2A58;
  if (!qword_1ECAB2A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A58);
  }

  return result;
}

unint64_t sub_1D8FA84B4()
{
  result = qword_1ECAB2A60;
  if (!qword_1ECAB2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A60);
  }

  return result;
}

uint64_t sub_1D8FA8508(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x457972617262696CLL && a2 == 0xED0000797469746ELL || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000007372 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1886351971 && a2 == 0xE400000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D0D20 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x74616D726F66 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D6F747375437369 && a2 == 0xEE006C6F626D7953 || (sub_1D9179ACC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D0D40 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

void ArtworkModel.init(serverArtwork:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 56);
  if (!v3 || (*(a1 + 24) & 1) != 0 || (*(a1 + 40) & 1) != 0)
  {

LABEL_6:
    sub_1D8D39E08(&v36);
    v4 = v43;
    v5 = v45;
    v6 = v46;
    *(a2 + 128) = v44;
    *(a2 + 144) = v5;
    *(a2 + 160) = v6;
    v7 = v41;
    *(a2 + 64) = v40;
    *(a2 + 80) = v7;
    *(a2 + 96) = v42;
    *(a2 + 112) = v4;
    v8 = v37;
    *a2 = v36;
    *(a2 + 16) = v8;
    v9 = v39;
    *(a2 + 32) = v38;
    *(a2 + 48) = v9;
    return;
  }

  v33 = *(a1 + 48);
  v29 = *(a1 + 32);
  v30 = *(a1 + 16);
  v10 = *(a1 + 72);
  if (v10)
  {
    *&v36 = *(a1 + 64);
    *(&v36 + 1) = v10;

    sub_1D8FA8B80(&v36, &v34);
    v32 = v34;
    v11 = v35;
  }

  else
  {

    v32 = 0;
    v11 = -1;
  }

  v31 = v11;

  sub_1D8FACF9C(v12, &v36);
  v13 = BYTE8(v36);
  v25 = v37;
  v26 = v36;
  v14 = BYTE8(v37);
  v15 = v38;
  v16 = BYTE8(v38);
  v17 = v39;
  v18 = BYTE8(v39);

  if (qword_1EDCD78A0 != -1)
  {
    swift_once();
  }

  v27 = HIBYTE(word_1EDCD78A8);
  v28 = word_1EDCD78A8;
  if (qword_1EDCD7890 != -1)
  {
    swift_once();
  }

  v19 = byte_1EDCD7898;

  if (BYTE8(v36) == 254)
  {
    v23 = 0;
    v24 = 0;
    v15 = 0;
    v17 = 0;
    v13 = -1;
    v14 = -1;
    v16 = -1;
    v18 = -1;
  }

  else
  {
    v24 = v25;
    v23 = v26;
  }

  *a2 = v33;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -1;
  *(a2 + 40) = v30;
  *(a2 + 48) = v29;
  *(a2 + 56) = v32;
  *(a2 + 64) = v31;
  *(a2 + 72) = v23;
  *(a2 + 80) = v13;
  *(a2 + 88) = v24;
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  *(a2 + 112) = v16;
  *(a2 + 120) = v17;
  *(a2 + 128) = v18;
  *(a2 + 129) = 4;
  *(a2 + 130) = v28;
  *(a2 + 131) = v27;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = v19;
  *(a2 + 153) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  nullsub_1(a2, v20, v21, v22);
}

uint64_t sub_1D8FA8B80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];

  result = sub_1D8D3707C(v5, v4);
  if (v2)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v8 = sub_1D917744C();
    __swift_project_value_buffer(v8, qword_1EDCD5E28);

    v9 = v2;
    v10 = sub_1D917741C();
    v11 = sub_1D9178CFC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1D8CFA924(v5, v4, &v18);
      *(v12 + 12) = 2080;
      v14 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      v15 = sub_1D917826C();
      v17 = sub_1D8CFA924(v15, v16, &v18);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_1D8CEC000, v10, v11, "Encountered an error decoding color descriptor (%s): %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v13, -1, -1);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    else
    {
    }

    result = 0;
    v7 = -1;
  }

  *a2 = result;
  *(a2 + 8) = v7;
  return result;
}

uint64_t ArtworkRequest.resizedForModelAspectRatio()@<X0>(uint64_t a1@<X8>)
{
  v6.size.width = *(v1 + 176);
  v6.size.height = *(v1 + 184);
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v5 = AVMakeRectWithAspectRatioInsideRect(*(v1 + 40), v6);

  return ArtworkRequest.resized(to:displayScale:)(0.0, 1, a1, v5.size.width, v5.size.height);
}

uint64_t ArtworkRequest.effects.setter(uint64_t a1)
{
  v3 = *(v1 + 208);

  *(v1 + 208) = a1;
  return result;
}

uint64_t ArtworkRequest.init(model:targetSize:displayScale:retainAspectRatio:cropCodeOverride:destination:effects:subsampleFactor:priority:trace:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  v19 = *(a1 + 40);
  v20 = *(a1 + 48);
  v21 = *a3;
  v22 = *a7;
  *(a9 + 224) = 0u;
  v23 = a9 + 224;
  *(a9 + 201) = 16;
  *(a9 + 240) = 0u;
  *(a9 + 256) = 0;
  sub_1D8D410BC(0x5379616C70736964, 0xEC000000656C6163, a12);
  sub_1D8D410BC(0x6874646977, 0xE500000000000000, a10);
  sub_1D8D410BC(0x746867696568, 0xE600000000000000, a11);
  sub_1D8D410BC(0x69772E6C65646F6DLL, 0xEB00000000687464, v19);
  sub_1D8D410BC(0x65682E6C65646F6DLL, 0xEC00000074686769, v20);
  v48.width = 0.0;
  v48.height = 0.0;
  v47.width = a10;
  v47.height = a11;
  if (CGSizeEqualToSize(v47, v48))
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v24 = sub_1D917744C();
    __swift_project_value_buffer(v24, qword_1EDCD5E28);
    v25 = sub_1D917741C();
    v26 = sub_1D9178CFC();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v21;
      v28 = v22;
      v29 = a8;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D8CEC000, v25, v26, "Request has an invalid size of 0, this will be convered to the preferred size but may represent an error earlier.", v30, 2u);
      v31 = v30;
      a8 = v29;
      v22 = v28;
      v21 = v27;
      MEMORY[0x1DA72CB90](v31, -1, -1);
    }
  }

  if (v19 == 0.0 || v20 == 0.0)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v32 = sub_1D917744C();
    __swift_project_value_buffer(v32, qword_1EDCD5E28);
    v33 = sub_1D917741C();
    v34 = sub_1D9178CFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = v21;
      v36 = v22;
      v37 = a2;
      v38 = a8;
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "Model has an invalid dimension of 0, this will be convered to the preferred size but may represent an error earlier.", v39, 2u);
      v40 = v39;
      a8 = v38;
      a2 = v37;
      v22 = v36;
      v21 = v35;
      MEMORY[0x1DA72CB90](v40, -1, -1);
    }
  }

  v41 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v41;
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 40) = v19;
  *(a9 + 48) = v20;
  *(a9 + 120) = *(a1 + 120);
  *(a9 + 136) = *(a1 + 136);
  *(a9 + 152) = *(a1 + 152);
  *(a9 + 168) = *(a1 + 168);
  *(a9 + 56) = *(a1 + 56);
  *(a9 + 72) = *(a1 + 72);
  *(a9 + 88) = *(a1 + 88);
  *(a9 + 104) = *(a1 + 104);
  *(a9 + 176) = a10;
  *(a9 + 184) = a11;
  *(a9 + 192) = a12;
  *(a9 + 200) = a2 & 1;
  *(a9 + 201) = v21;
  *(a9 + 202) = a4 & 1;
  *(a9 + 203) = v22;
  *(a9 + 208) = a5;
  *(a9 + 216) = a6;

  return sub_1D8D412B0(a8, v23);
}

uint64_t ArtworkRequest.with(subsampleFactor:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1D8D41388(v2, a2);
  *(a2 + 216) = a1;
  return result;
}

uint64_t ArtworkRequest.with(destination:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_1D8D41388(v2, a2);
  *(a2 + 202) = a1 & 1;
  return result;
}

float64x2_t ArtworkRequest.subsampled(by:)@<Q0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1D8D41388(v2, a2);
  *(a2 + 216) = a1;
  v5 = (&unk_1D91A0DF8 + 8 * a1);
  v6 = vld1q_dup_f64(v5);
  result = vdivq_f64(v2[11], v6);
  *(a2 + 176) = result;
  return result;
}

uint64_t ArtworkRequest.bucketed(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 8))(v4, v5, *(v2 + 176), *(v2 + 184));

  return ArtworkRequest.resized(to:displayScale:)(0.0, 1, a2, v6, v7);
}

uint64_t ArtworkRequest.with(libraryEntity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 7);
  v7 = *(v4 + 9);
  v83 = *(v4 + 8);
  v84 = v7;
  v8 = *(v4 + 9);
  v85 = *(v4 + 10);
  v9 = *(v4 + 3);
  v10 = *(v4 + 5);
  v79 = *(v4 + 4);
  v80 = v10;
  v11 = *(v4 + 5);
  v12 = *(v4 + 7);
  v81 = *(v4 + 6);
  v82 = v12;
  v13 = *(v4 + 1);
  v76[0] = *v4;
  v76[1] = v13;
  v14 = *(v4 + 3);
  v16 = *v4;
  v15 = *(v4 + 1);
  v77 = *(v4 + 2);
  v78 = v14;
  v61 = v83;
  v62 = v8;
  v63 = *(v4 + 10);
  v57 = v79;
  v58 = v11;
  v59 = v81;
  v60 = v6;
  v53 = v16;
  v54 = v15;
  v55 = v77;
  v56 = v9;
  ArtworkModel.with(libraryEntity:)(a1, a2, a3, v64);
  v86[8] = v61;
  v86[9] = v62;
  v86[10] = v63;
  v86[4] = v57;
  v86[5] = v58;
  v86[6] = v59;
  v86[7] = v60;
  v86[0] = v53;
  v86[1] = v54;
  v86[2] = v55;
  v86[3] = v56;
  sub_1D8D36E5C(v76, &v50);
  sub_1D8DB15B0(v86);
  v50 = v64[0];
  v51 = v64[1];
  v52 = v65;
  v17 = v66;
  v18 = v67;
  v57 = v72;
  v58 = v73;
  v59 = v74;
  *&v60 = v75;
  v53 = v68;
  v54 = v69;
  v55 = v70;
  v56 = v71;
  v19 = v4[22];
  v20 = v4[23];
  v21 = v4[24];
  v47 = *(v4 + 201);
  v48 = *(v4 + 200);
  v22 = *(v4 + 202);
  v23 = *(v4 + 26);
  v24 = *(v4 + 216);
  v25 = *(v4 + 203);
  sub_1D8D728EC((v4 + 28), v49);
  *(a4 + 224) = 0u;
  *(a4 + 201) = 16;
  *(a4 + 240) = 0u;
  *(a4 + 256) = 0;

  sub_1D8D410BC(0x5379616C70736964, 0xEC000000656C6163, v21);
  sub_1D8D410BC(0x6874646977, 0xE500000000000000, v19);
  sub_1D8D410BC(0x746867696568, 0xE600000000000000, v20);
  sub_1D8D410BC(0x69772E6C65646F6DLL, 0xEB00000000687464, v17);
  sub_1D8D410BC(0x65682E6C65646F6DLL, 0xEC00000074686769, v18);
  v88.width = 0.0;
  v88.height = 0.0;
  v87.width = v19;
  v87.height = v20;
  if (CGSizeEqualToSize(v87, v88))
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v26 = sub_1D917744C();
    __swift_project_value_buffer(v26, qword_1EDCD5E28);
    v27 = sub_1D917741C();
    v28 = sub_1D9178CFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v25;
      v30 = v24;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D8CEC000, v27, v28, "Request has an invalid size of 0, this will be convered to the preferred size but may represent an error earlier.", v31, 2u);
      v32 = v31;
      v24 = v30;
      v25 = v29;
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }
  }

  if (v17 == 0.0 || v18 == 0.0)
  {
    if (qword_1EDCD5E20 != -1)
    {
      swift_once();
    }

    v33 = sub_1D917744C();
    __swift_project_value_buffer(v33, qword_1EDCD5E28);
    v34 = sub_1D917741C();
    v35 = sub_1D9178CFC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v25;
      v37 = v23;
      v38 = v22;
      v39 = v24;
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D8CEC000, v34, v35, "Model has an invalid dimension of 0, this will be convered to the preferred size but may represent an error earlier.", v40, 2u);
      v41 = v40;
      v24 = v39;
      v22 = v38;
      v23 = v37;
      v25 = v36;
      MEMORY[0x1DA72CB90](v41, -1, -1);
    }
  }

  v42 = v51;
  *a4 = v50;
  *(a4 + 16) = v42;
  *(a4 + 32) = v52;
  *(a4 + 40) = v17;
  *(a4 + 48) = v18;
  v43 = v58;
  *(a4 + 120) = v57;
  *(a4 + 136) = v43;
  *(a4 + 152) = v59;
  *(a4 + 168) = v60;
  v44 = v54;
  *(a4 + 56) = v53;
  *(a4 + 72) = v44;
  v45 = v56;
  *(a4 + 88) = v55;
  *(a4 + 104) = v45;
  *(a4 + 176) = v19;
  *(a4 + 184) = v20;
  *(a4 + 192) = v21;
  *(a4 + 200) = v48;
  *(a4 + 201) = v47;
  *(a4 + 202) = v22;
  *(a4 + 203) = v25;
  *(a4 + 208) = v23;
  *(a4 + 216) = v24;
  return sub_1D8D412B0(v49, a4 + 224);
}

unint64_t sub_1D8FA995C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6C65646F6DLL;
    v6 = 0x5379616C70736964;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x6953746567726174;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x73746365666665;
    v2 = 0x6C706D6173627573;
    if (a1 != 7)
    {
      v2 = 0x797469726F697270;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x74616E6974736564;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D8FA9AAC()
{
  v1 = *v0;
  sub_1D9179DBC();
  sub_1D8ECAE7C();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FA9AFC()
{
  v1 = *v0;
  sub_1D9179DBC();
  sub_1D8ECAE7C();
  return sub_1D9179E1C();
}

uint64_t sub_1D8FA9B40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1D8FAC1B8();
  *a2 = result;
  return result;
}

unint64_t sub_1D8FA9B70@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D8FA995C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D8FA9BB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8FAC1B8();
  *a1 = result;
  return result;
}

uint64_t sub_1D8FA9BE0(uint64_t a1)
{
  v2 = sub_1D8FABB38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8FA9C1C(uint64_t a1)
{
  v2 = sub_1D8FABB38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtworkRequest.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8420, &qword_1D91A0438);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8FABB38();
  sub_1D9179F1C();
  v10 = v2[8];
  v11 = v2[6];
  v57 = v2[7];
  v58 = v10;
  v12 = v2[8];
  v13 = v2[10];
  v59 = v2[9];
  v60 = v13;
  v14 = v2[4];
  v15 = v2[2];
  v53 = v2[3];
  v54 = v14;
  v16 = v2[4];
  v17 = v2[6];
  v55 = v2[5];
  v56 = v17;
  v18 = *v2;
  v19 = v2[2];
  v51 = v2[1];
  v52 = v19;
  v20 = *v2;
  v47 = v12;
  v48 = v59;
  v49 = v2[10];
  v50 = v20;
  v43 = v16;
  v44 = v55;
  v45 = v11;
  v46 = v57;
  v39 = v18;
  v40 = v51;
  v41 = v15;
  v42 = v53;
  v38 = 0;
  sub_1D8D36E5C(&v50, &v27);
  sub_1D8FABB8C();
  v21 = v61;
  sub_1D91799FC();
  if (v21)
  {
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v37 = v49;
    v31 = v43;
    v32 = v44;
    v33 = v45;
    v27 = v39;
    v28 = v40;
    v29 = v41;
    v30 = v42;
    sub_1D8DB15B0(&v27);
  }

  else
  {
    v34 = v46;
    v35 = v47;
    v36 = v48;
    v37 = v49;
    v31 = v43;
    v32 = v44;
    v33 = v45;
    v27 = v39;
    v28 = v40;
    v29 = v41;
    v30 = v42;
    sub_1D8DB15B0(&v27);
    v26 = v2[11];
    v25 = 1;
    type metadata accessor for CGSize(0);
    sub_1D8D5C0D4(&unk_1ECAAFCC0, type metadata accessor for CGSize);
    sub_1D91799FC();
    *&v26 = *(v2 + 24);
    v25 = 2;
    sub_1D8FA7FA4();
    sub_1D91799FC();
    v22 = *(v2 + 200);
    LOBYTE(v26) = 3;
    sub_1D91799CC();
    LOBYTE(v26) = *(v2 + 201);
    v25 = 4;
    sub_1D8FA476C();
    sub_1D917999C();
    LOBYTE(v26) = *(v2 + 202);
    v25 = 5;
    sub_1D8FABBE0();
    sub_1D91799FC();
    *&v26 = *(v2 + 26);
    v25 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8428, &qword_1D91A0440);
    sub_1D8FABD84(&qword_1ECAAFF80, sub_1D8FABC34);
    sub_1D91799FC();
    LOBYTE(v26) = *(v2 + 216);
    v25 = 7;
    sub_1D8FABC88();
    sub_1D917999C();
    LOBYTE(v26) = *(v2 + 203);
    v25 = 8;
    sub_1D8ECEF68();
    sub_1D91799FC();
  }

  return (*(v5 + 8))(v8, v4);
}