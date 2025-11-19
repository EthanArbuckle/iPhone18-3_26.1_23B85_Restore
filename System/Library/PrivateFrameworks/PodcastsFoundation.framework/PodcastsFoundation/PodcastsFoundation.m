uint64_t type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext()
{
  result = qword_1EDCD7A30;
  if (!qword_1EDCD7A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8CEF52C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8CEF564()
{
  sub_1D8CEF8E8(319, &qword_1EDCD5C10, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D8CEF87C();
    if (v1 <= 0x3F)
    {
      sub_1D8CEF8E8(319, &qword_1EDCD7710, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1D8CEF938(319, &qword_1EDCD7878, type metadata accessor for PlaybackIntent, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1D8CEF938(319, &qword_1EDCD5C18, type metadata accessor for PodcastsMediaLibrary.MediaItemSnapshot, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1D8CEF938(319, &qword_1EDCD7A98, type metadata accessor for PodcastsMediaLibrary.MediaItem, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1D8CEF8E8(319, &qword_1EDCD76F8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_1D8CEF8E8(319, qword_1EDCD7458, &type metadata for PodcastsMediaLibrary.PlaybackQueueContext.FeatureName, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_1D8CEF8E8(319, &qword_1EDCD5C08, MEMORY[0x1E69E76D8], MEMORY[0x1E69E62F8]);
                  if (v8 <= 0x3F)
                  {
                    sub_1D8CEF8E8(319, &qword_1EDCD5A98, MEMORY[0x1E69E76D8], MEMORY[0x1E69E6720]);
                    if (v9 <= 0x3F)
                    {
                      sub_1D8CEF8E8(319, qword_1EDCD66E0, &type metadata for MediaIdentifier, MEMORY[0x1E69E6720]);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for AccountResolver();
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D8CEF87C()
{
  if (!qword_1EDCD5C28)
  {
    v0 = sub_1D91780DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD5C28);
    }
  }
}

void sub_1D8CEF8E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D8CEF938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D8CEF9DC()
{
  if (!qword_1EDCD7A98)
  {
    type metadata accessor for PodcastsMediaLibrary.MediaItem(255);
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD7A98);
    }
  }
}

void sub_1D8CEFA34()
{
  sub_1D8CEF9DC();
  if (v0 <= 0x3F)
  {
    sub_1D8CF1E2C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8CEFAE8()
{
  sub_1D8CEFDCC(319, &qword_1EDCD7710);
  if (v0 <= 0x3F)
  {
    sub_1D8CEFDCC(319, &qword_1EDCD5F10);
    if (v1 <= 0x3F)
    {
      sub_1D8CEFE6C(319, &qword_1EDCD7B48, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        sub_1D8CEFDCC(319, &qword_1EDCD76F8);
        if (v3 <= 0x3F)
        {
          sub_1D8CEFDCC(319, &qword_1EDCD5BE8);
          if (v4 <= 0x3F)
          {
            sub_1D8CEFE6C(319, qword_1EDCD6CE8, type metadata accessor for ServerArtwork);
            if (v5 <= 0x3F)
            {
              sub_1D8CEFE6C(319, &qword_1EDCD7BA0, MEMORY[0x1E6969530]);
              if (v6 <= 0x3F)
              {
                sub_1D8CEFDCC(319, qword_1EDCD7538);
                if (v7 <= 0x3F)
                {
                  sub_1D8CEFDCC(319, &qword_1EDCD5EC0);
                  if (v8 <= 0x3F)
                  {
                    sub_1D8CEFDCC(319, qword_1EDCD6180);
                    if (v9 <= 0x3F)
                    {
                      sub_1D8CEFEC0();
                      if (v10 <= 0x3F)
                      {
                        sub_1D8CEFDCC(319, qword_1EDCD6590);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D8CEFDCC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D91791BC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D8CEFE18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D91791BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D8CEFE6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D91791BC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D8CEFEC0()
{
  if (!qword_1EDCD5C20)
  {
    v0 = sub_1D91780DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD5C20);
    }
  }
}

os_log_t _MTLogCategoryDefault()
{
  v0 = os_log_create("com.apple.podcasts", "Podcasts");

  return v0;
}

id sub_1D8CF0C40(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = _sSo20NSManagedObjectModelC18PodcastsFoundationE27addFeatureFlaggedProperties2toA2B_tFZ_0(v3);

  return v4;
}

id _sSo20NSManagedObjectModelC18PodcastsFoundationE27addFeatureFlaggedProperties2toA2B_tFZ_0(void *a1)
{
  v19[3] = &type metadata for Podcasts;
  v19[4] = sub_1D8CF0F2C();
  LOBYTE(v19[0]) = 40;
  v1 = sub_1D917710C();
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  if (v1)
  {
    v2 = sub_1D8ECD130(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = v2[2];
    v3 = v2[3];
    v5 = (v4 + 1);
    if (v4 >= v3 >> 1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v2[2] = v5;
      v6 = v2 + 2;
      v7 = &v2[2 * v4];
      v7[4] = sub_1D8FC3330;
      v7[5] = 0;
LABEL_5:
      v5 = [a1 copy];
      sub_1D917928C();
      swift_unknownObjectRelease();
      sub_1D8FC3338();
      if (!swift_dynamicCast())
      {
        break;
      }

      v4 = v18;
      v8 = *v6;
      if (!*v6)
      {
LABEL_10:

        return v18;
      }

      v9 = 0;
      v10 = (v2 + 5);
      while (1)
      {
        v3 = *v6;
        if (v9 >= *v6)
        {
          break;
        }

        ++v9;
        v11 = *(v10 - 1);
        v5 = *v10;
        v19[0] = v18;

        v11(v19);

        v10 += 2;
        if (v8 == v9)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_21:
      v2 = sub_1D8ECD130((v3 > 1), v5, 1, v2);
    }

    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1EDCD0F88);
    v14 = sub_1D917741C();
    v15 = sub_1D9178CFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D8CEC000, v14, v15, "Unable to create a mutable copy.", v16, 2u);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
    v6 = (MEMORY[0x1E69E7CC0] + 16);
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_5;
    }
  }

  return a1;
}

unint64_t sub_1D8CF0F2C()
{
  result = qword_1EDCD7B40;
  if (!qword_1EDCD7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD7B40);
  }

  return result;
}

uint64_t sub_1D8CF0F94()
{
  v3 = *v0;
  Podcasts.rawValue.getter(&v2);
  return v2;
}

void Podcasts.rawValue.getter(uint64_t a1@<X8>)
{
  v2 = "SerialSortAutoDownloads";
  v3 = 23;
  switch(*v1)
  {
    case 1:
      v2 = "RenderImplicitFollowsAsLocalShows";
      v3 = 33;
      break;
    case 2:
      v2 = "RemoveDownloadsTipService";
      v3 = 25;
      break;
    case 3:
      v2 = "RemoveOlderDownloadsTipMac";
      v3 = 26;
      break;
    case 4:
      v2 = "MercuryOnMac";
      v3 = 12;
      break;
    case 5:
      v2 = "SimplifiedSyncDirtyHandling";
      v3 = 27;
      break;
    case 6:
      v2 = "iTunesCloudFairPlayStreaming";
      v3 = 28;
      break;
    case 7:
      v2 = "UpNextTapToShowDetailExperiment";
      v3 = 31;
      break;
    case 8:
      v2 = "HeroJoeColorDebugger";
      v3 = 20;
      break;
    case 9:
      v2 = "iTunesCloudFairPlayOffline";
      v3 = 26;
      break;
    case 0xA:
      v2 = "WidgetEyebrowsUseTextVariants";
      v3 = 29;
      break;
    case 0xB:
      v2 = "Entitlements";
      v3 = 12;
      break;
    case 0xC:
      v2 = "ResponsivePlayback";
      v3 = 18;
      break;
    case 0xD:
      v2 = "ReadOnlySyncOnHomePods";
      v3 = 22;
      break;
    case 0xE:
      v2 = "WatchUpNextWidget";
      v3 = 17;
      break;
    case 0xF:
      v2 = "RecentlySearched";
      v3 = 16;
      break;
    case 0x10:
      v2 = "PonderosaForceColdStart";
      v3 = 23;
      break;
    case 0x11:
      v2 = "TopHits";
      v3 = 7;
      break;
    case 0x12:
      v2 = "TopHitsMac";
      v3 = 10;
      break;
    case 0x13:
      v2 = "UipFluidTransitions";
      v3 = 19;
      break;
    case 0x14:
      v2 = "HomePodSiriDonationFromAPNS";
      v3 = 27;
      break;
    case 0x15:
      v2 = "BatchFeedFetch";
      v3 = 14;
      break;
    case 0x16:
      v2 = "UseShowPageTallForBackdrop";
      v3 = 26;
      break;
    case 0x17:
      v2 = "ThinClientSleepTimer";
      v3 = 20;
      break;
    case 0x18:
      v2 = "CategoriesInSearch";
      v3 = 18;
      break;
    case 0x19:
      v2 = "PromoteInitialUpNextItem";
      v3 = 24;
      break;
    case 0x1A:
      v2 = "LibraryWidget";
      goto LABEL_46;
    case 0x1B:
      v2 = "ShowWidget";
      v3 = 10;
      break;
    case 0x1C:
      v2 = "RedMars";
      v3 = 7;
      break;
    case 0x1D:
      v2 = "RedSaturn";
      v3 = 9;
      break;
    case 0x1E:
      v2 = "RedVenus";
      v3 = 8;
      break;
    case 0x1F:
      v2 = "SpeakEasy";
      v3 = 9;
      break;
    case 0x20:
      v2 = "InMemoryStatePushes";
      v3 = 19;
      break;
    case 0x21:
      v2 = "UseLiteralContinuousPlaybackSetting";
      v3 = 35;
      break;
    case 0x22:
      v2 = "LibraryCategoriesPageImpressionMetrics";
      v3 = 38;
      break;
    case 0x23:
      v2 = "ExperimentalPlayActionImplementations";
      v3 = 37;
      break;
    case 0x24:
      v2 = "CarPlaySiriCell";
      v3 = 15;
      break;
    case 0x25:
      v2 = "JetWidget";
      v3 = 9;
      break;
    case 0x26:
      v2 = "JetWidgetPushes";
      v3 = 15;
      break;
    case 0x27:
      v2 = "AdvancedPlayback";
      v3 = 16;
      break;
    case 0x28:
      v2 = "PandoChapters";
      goto LABEL_46;
    case 0x29:
      v2 = "PandoLinks";
      v3 = 10;
      break;
    case 0x2A:
      v2 = "PandoLinksDebug";
      v3 = 15;
      break;
    case 0x2B:
      v2 = "jetpackassetd";
LABEL_46:
      v3 = 13;
      break;
    case 0x2C:
      v2 = "UpNextSplit";
      v3 = 11;
      break;
    default:
      break;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

os_log_t _MTLogCategoryDatabase()
{
  v0 = os_log_create("com.apple.podcasts", "Database");

  return v0;
}

id sub_1D8CF1A38(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v13 - v4;
  v6 = a1;
  NSUserDefaults.lastAppUseDate.getter(v5);

  v7 = sub_1D9176E3C();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

uint64_t NSUserDefaults.lastAppUseDate.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 objectForKey_])
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    v3 = sub_1D9176E3C();
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    sub_1D8D08A50(v9, &qword_1ECAB57F0, &unk_1D9190AA0);
    v6 = sub_1D9176E3C();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

os_log_t _MTLogCategoryLifecycle()
{
  v0 = os_log_create("com.apple.podcasts", "Lifecycle");

  return v0;
}

void sub_1D8CF1DB0()
{
  if (!qword_1EDCD5EB8)
  {
    sub_1D917734C();
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD5EB8);
    }
  }
}

void sub_1D8CF1E2C()
{
  if (!qword_1EDCD5BE0)
  {
    sub_1D8CF1E88();
    v0 = sub_1D9178B4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD5BE0);
    }
  }
}

unint64_t sub_1D8CF1E88()
{
  result = qword_1EDCD6828[0];
  if (!qword_1EDCD6828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD6828);
  }

  return result;
}

uint64_t type metadata accessor for ArtworkContent()
{
  result = qword_1EDCD6BB8;
  if (!qword_1EDCD6BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8CF1FD8()
{
  result = sub_1D9176C2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8CF204C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8CF2088(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8CF2154(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D8CF2230()
{
  sub_1D8CF32B8();
  if (v0 <= 0x3F)
  {
    sub_1D8CF336C();
    if (v1 <= 0x3F)
    {
      sub_1D8CF33CC();
      if (v2 <= 0x3F)
      {
        sub_1D8CF2154(319, &qword_1EDCD7B70, 0x1E69E9610);
        if (v3 <= 0x3F)
        {
          sub_1D8CF230C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D8CF230C()
{
  if (!qword_1EDCD5E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4980, &qword_1D918B0D0);
    v0 = sub_1D91773BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD5E88);
    }
  }
}

uint64_t sub_1D8CF23A0(uint64_t a1)
{
  result = sub_1D9176C2C();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    v6 = *(a1 + 16);
    swift_getAssociatedTypeWitness();
    v7 = *(a1 + 32);
    v8 = *(a1 + 48);
    result = type metadata accessor for DiskAssetCache();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D8CF2478(void *a1)
{
  v2 = a1[2];
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = a1[3];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for DownloadTaskIdentifier();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for DiskAssetCache();
    v6 = v5;
    swift_getWitnessTable();
    swift_getWitnessTable();
    swift_getAssociatedConformanceWitness();
    v9 = a1[4];
    type metadata accessor for AssetBackgroundDelegate();
    if (v7 <= 0x3F)
    {
      sub_1D8CF269C();
      if (v8 <= 0x3F && v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8CF269C()
{
  if (!qword_1ECAB0220)
  {
    sub_1D8CF2154(255, &qword_1ECAAFE18, 0x1E696AF78);
    v0 = sub_1D9177A2C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB0220);
    }
  }
}

uint64_t sub_1D8CF272C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8CF2780()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1D8CF27E8()
{
  sub_1D8CF3D64();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1D9176C2C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D8CF2900()
{
  if (!qword_1EDCD5BF0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCD5BF0);
    }
  }
}

void sub_1D8CF2980(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D8CF29CC()
{
  if (!qword_1EDCD67D8)
  {
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD67D8);
    }
  }
}

void sub_1D8CF2A1C()
{
  if (!qword_1EDCD6688)
  {
    type metadata accessor for EpisodePlayState();
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD6688);
    }
  }
}

void sub_1D8CF2A74()
{
  if (!qword_1ECAB1DF8)
  {
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB1DF8);
    }
  }
}

unint64_t sub_1D8CF2AC4()
{
  result = qword_1EDCD7B00;
  if (!qword_1EDCD7B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD7B00);
  }

  return result;
}

uint64_t sub_1D8CF2B10(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

id ApplicationStateMonitor.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___PodcastsApplicationStateMonitor_applicationState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB4E0, &qword_1D91BC6C0);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  *&v0[v2] = v3;
  v4 = OBJC_IVAR___PodcastsApplicationStateMonitor_listenerTask;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB4E8, &qword_1D91BC6C8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *&v0[v4] = v5;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

os_log_t _MTLogCategoryNetwork()
{
  v0 = os_log_create("com.apple.podcasts", "Network");

  return v0;
}

void sub_1D8CF307C()
{
  if (!qword_1EDCD7B48)
  {
    sub_1D9176C2C();
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD7B48);
    }
  }
}

uint64_t type metadata accessor for TTMLRequest()
{
  result = qword_1ECAB2A68;
  if (!qword_1ECAB2A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8CF31AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for CachingImageContentProvider()
{
  result = qword_1EDCD60A8;
  if (!qword_1EDCD60A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8CF3274(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D8CF2154(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D8CF32B8()
{
  if (!qword_1EDCD70D8[0])
  {
    sub_1D8CF3274(&qword_1EDCD5B08, &qword_1EDCD76D0, 0x1E696AEC0);
    v0 = type metadata accessor for CacheDomain();
    if (!v1)
    {
      atomic_store(v0, qword_1EDCD70D8);
    }
  }
}

void sub_1D8CF336C()
{
  if (!qword_1EDCD6BC8[0])
  {
    type metadata accessor for ArtworkContent();
    v0 = type metadata accessor for AnyAssetSource();
    if (!v1)
    {
      atomic_store(v0, qword_1EDCD6BC8);
    }
  }
}

unint64_t sub_1D8CF33CC()
{
  result = qword_1EDCD66D0;
  if (!qword_1EDCD66D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCD66D0);
  }

  return result;
}

uint64_t sub_1D8CF3434()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8CF3480()
{
  result = qword_1EDCD5C00;
  if (!qword_1EDCD5C00)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EDCD5C00);
  }

  return result;
}

uint64_t type metadata accessor for InMemoryEpisodeStateModel()
{
  result = qword_1ECAB1910;
  if (!qword_1ECAB1910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8CF34FC()
{
  sub_1D8CF2A1C();
  if (v0 <= 0x3F)
  {
    sub_1D8CF2A74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_1D8CF3580()
{
  result = [objc_allocWithZone(type metadata accessor for ApplicationStateMonitor()) init];
  qword_1ECAB1C78 = result;
  return result;
}

uint64_t sub_1D8CF38B4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  swift_getAssociatedTypeWitness();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  result = type metadata accessor for InMemoryAssetCache();
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for CacheDomain.DiskCaches();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8CF39F4()
{
  result = sub_1D9176C2C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for AssetReaderTimelineAlignment()
{
  result = qword_1ECAB1808;
  if (!qword_1ECAB1808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8CF3B04()
{
  result = sub_1D917744C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for ShazamSignatureRequest()
{
  result = qword_1ECAB1C80;
  if (!qword_1ECAB1C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8CF3BFC()
{
  sub_1D8CF307C();
  if (v0 <= 0x3F)
  {
    sub_1D8CF3CAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8CF3CAC()
{
  if (!qword_1EDCD5F48[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB5F88, &qword_1D9193300);
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, qword_1EDCD5F48);
    }
  }
}

unint64_t sub_1D8CF3D10()
{
  result = qword_1EDCD6AD0;
  if (!qword_1EDCD6AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6AD0);
  }

  return result;
}

void sub_1D8CF3D64()
{
  if (!qword_1ECAB01F0)
  {
    v0 = sub_1D9177AEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECAB01F0);
    }
  }
}

void sub_1D8CF3DDC()
{
  sub_1D8CF1DB0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t type metadata accessor for EpisodePlayState()
{
  result = qword_1EDCD66C0;
  if (!qword_1EDCD66C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8CF3EE0()
{
  sub_1D8CF2900();
  if (v0 <= 0x3F)
  {
    sub_1D8CF3F68();
    if (v1 <= 0x3F)
    {
      sub_1D8CF3FE0(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D8CF3F68()
{
  if (!qword_1EDCD7608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB75C0, &unk_1D9188A50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCD7608);
    }
  }
}

void sub_1D8CF3FE0(uint64_t a1)
{
  if (!qword_1EDCD5BF8)
  {
    MEMORY[0x1EEE9AC00](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDCD5BF8);
    }
  }
}

void sub_1D8CF4154()
{
  sub_1D8CF2980(319, qword_1EDCD67E0, sub_1D8CF29CC);
  if (v0 <= 0x3F)
  {
    sub_1D8CF3480();
    if (v1 <= 0x3F)
    {
      sub_1D8CF422C();
      if (v2 <= 0x3F)
      {
        sub_1D8CF2980(319, qword_1EDCD6690, sub_1D8CF2A1C);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

ValueMetadata *sub_1D8CF422C()
{
  result = qword_1EDCD6978;
  if (!qword_1EDCD6978)
  {
    result = &type metadata for EyebrowBuilder.EpisodeHeaderSubtitleConfiguration;
    atomic_store(&type metadata for EyebrowBuilder.EpisodeHeaderSubtitleConfiguration, &qword_1EDCD6978);
  }

  return result;
}

void sub_1D8CF427C(uint64_t a1)
{
  sub_1D8CF2AC4();
  if (v2 <= 0x3F)
  {
    sub_1D8CF4344();
    if (v3 <= 0x3F)
    {
      sub_1D917734C();
      if (v4 <= 0x3F)
      {
        v5 = *(a1 + 16);
        type metadata accessor for Loadable();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D8CF4344()
{
  if (!qword_1EDCD7710)
  {
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD7710);
    }
  }
}

id static ApplicationStateMonitor.shared.getter()
{
  if (qword_1ECAB1C70 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAB1C78;

  return v1;
}

unint64_t sub_1D8CF446C()
{
  result = qword_1EDCD6820;
  if (!qword_1EDCD6820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD6820);
  }

  return result;
}

void sub_1D8CF44E0()
{
  sub_1D8CEFDCC(319, &qword_1EDCD5F10);
  if (v0 <= 0x3F)
  {
    sub_1D8CEFDCC(319, &qword_1EDCD7710);
    if (v1 <= 0x3F)
    {
      sub_1D8CEFE6C(319, &qword_1EDCD7B48, MEMORY[0x1E6968FB0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for AccountResolver()
{
  result = qword_1EDCD67B8;
  if (!qword_1EDCD67B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8CF463C()
{
  sub_1D8CF1DB0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D8CF48EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8CF4934(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8CF4994()
{
  v0 = sub_1D917744C();
  __swift_allocate_value_buffer(v0, qword_1EDCD77B0);
  __swift_project_value_buffer(v0, qword_1EDCD77B0);
  return sub_1D917742C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1D8CF4A6C()
{
  sub_1D8CF4B30();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D8CF4B30()
{
  if (!qword_1EDCD7BA0)
  {
    sub_1D9176E3C();
    v0 = sub_1D91791BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCD7BA0);
    }
  }
}

void sub_1D8CF4CD4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(&_lock);
  objc_exception_rethrow();
}

uint64_t sub_1D8CF4D08()
{
  sub_1D9177E0C();
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  return sub_1D91792CC();
}

uint64_t sub_1D8CF4DD4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D8CFA9F0(a1, a2);
  sub_1D8CFAC30(&unk_1F545D0D8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_1D8CF4E20(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB43F8, &qword_1D91A6660);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D8CF4EF0()
{
  v0 = sub_1D9176C2C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() managedAssetsDirectoryURL];
  sub_1D9176B9C();

  v5 = objc_allocWithZone(type metadata accessor for DeviceCapacityMonitor());
  result = sub_1D8CFAF70(43200000, 0, v3, 1);
  qword_1EDCD3810 = result;
  return result;
}

id MediaRequestController.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_responseQueue;
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  *&v0[v2] = sub_1D9178E1C();
  *&v0[OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_cachePolicy] = 0;
  v3 = OBJC_IVAR____TtC18PodcastsFoundation22MediaRequestController_requestTelemetry;
  v4 = sub_1D8CF5148(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB9658, &unk_1D91AC170);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  *&v1[v3] = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for MediaRequestController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithConcurrentOperationCount_requestEncodingType_, 1, 1);
  [v6 setDelegate_];
  return v6;
}

unint64_t sub_1D8CF5148(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4290, &qword_1D9188DE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4298, &qword_1D9188DF0);
    v8 = sub_1D91797AC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D8D088B4(v10, v6, &qword_1ECAB4290, &qword_1D9188DE8);
      result = sub_1D8D93AB0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D9176EAC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D8CF5330()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D91795CC();
    v4 = (v1 + 32);
    do
    {
      v5 = v0[5];
      v6 = *v4++;
      v7 = v6;
      sub_1D9178F9C();

      sub_1D917959C();
      v8 = *(v17 + 16);
      sub_1D91795DC();
      sub_1D91795EC();
      sub_1D91795AC();
      --v2;
    }

    while (v2);
    v3 = v17;
  }

  v0[6] = v3;
  v10 = v0[3];
  v9 = v0[4];
  v11 = swift_allocObject();
  v0[7] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;

  v12 = swift_task_alloc();
  v0[8] = v12;
  v12[2] = v3;
  v12[3] = &unk_1D9196A18;
  v12[4] = v11;
  v13 = *(MEMORY[0x1E69E88A0] + 4);
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_1D8F40B18;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1D8CF54E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8CF5518(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D8D58924;

  return sub_1D8CF55DC(a1, a2, v6, v7, v8);
}

uint64_t sub_1D8CF55DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8CF5688, 0, 0);
}

uint64_t sub_1D8CF5688()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v3 = 0;
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v26 = v1 & 0xC000000000000001;
    v23 = *(v0 + 80) + 32;
    v24 = i;
    while (v26)
    {
      v1 = MEMORY[0x1DA72AA90](v3, *(v0 + 80));
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_18;
      }

LABEL_9:
      v27 = v5;
      v28 = v3;
      v7 = *(v0 + 104);
      v6 = *(v0 + 112);
      v8 = *(v0 + 88);
      v9 = *(v0 + 96);
      v10 = sub_1D917886C();
      v11 = *(v10 - 8);
      (*(v11 + 56))(v6, 1, 1, v10);
      v12 = swift_allocObject();
      v12[2] = 0;
      v13 = v12 + 2;
      v12[3] = 0;
      v12[4] = v1;
      v12[5] = v8;
      v12[6] = v9;
      sub_1D8CF5C74(v6, v7);
      LODWORD(v6) = (*(v11 + 48))(v7, 1, v10);

      v14 = *(v0 + 104);
      if (v6 == 1)
      {
        sub_1D8CF5CE4(*(v0 + 104));
        if (!*v13)
        {
          goto LABEL_13;
        }
      }

      else
      {
        sub_1D917885C();
        (*(v11 + 8))(v14, v10);
        if (!*v13)
        {
LABEL_13:
          v16 = 0;
          v18 = 0;
          goto LABEL_14;
        }
      }

      v15 = v12[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_1D917874C();
      v18 = v17;
      swift_unknownObjectRelease();
LABEL_14:
      v19 = **(v0 + 72);

      if (v18 | v16)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v16;
        *(v0 + 40) = v18;
      }

      else
      {
        v4 = 0;
      }

      v1 = *(v0 + 112);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v19;
      swift_task_create();

      sub_1D8CF5CE4(v1);
      v3 = v28 + 1;
      if (v27 == v24)
      {
        goto LABEL_21;
      }
    }

    if (v3 >= *(v25 + 16))
    {
      goto LABEL_19;
    }

    v1 = *(v23 + 8 * v3);

    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:
  v20 = swift_task_alloc();
  *(v0 + 120) = v20;
  *v20 = v0;
  v20[1] = sub_1D8F40D24;
  v21 = *(v0 + 72);

  return sub_1D8CF5A38(0, 0);
}

uint64_t sub_1D8CF59F0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1D8CF5A38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1D917874C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D8CF7EF8, v4, v6);
}

uint64_t sub_1D8CF5ACC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D8D5FF18;

  return sub_1D8CF5BA4(a1, v4, v5, v1 + 4, v6, v7);
}

uint64_t sub_1D8CF5BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = *a4;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D8D58924;

  return sub_1D8CF8030(a1, a2, a3, v12, a5, a6);
}

uint64_t sub_1D8CF5C74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8CF5CE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8CF5D5C()
{
  v0 = *sub_1D8CF5DB0();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_1D8CF5DB0()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[6];
  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_1D917935C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA72AA90](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_12;
        }
      }

      sub_1D9177EFC();

      ++v4;
    }

    while (v6 != v3);
  }

  v7 = v1[3];
  swift_getObjectType();
  sub_1D9178F2C();
  v8 = v1[2];
  swift_unknownObjectRelease();

  v9 = v1[5];

  v10 = v1[6];

  sub_1D8CF5EF8(v1 + OBJC_IVAR____TtC18PodcastsFoundationP33_D8DC80449EE77C4DA4BB398C4E1A338F10MultiTimer_startDate);
  return v1;
}

uint64_t sub_1D8CF5EF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8CF5F60(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

char *sub_1D8CF5FB8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9178E8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E69E7CC0];
  *(v4 + 6) = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtC18PodcastsFoundationP33_D8DC80449EE77C4DA4BB398C4E1A338F10MultiTimer_startDate;
  v15 = sub_1D9176E3C();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  *(v4 + 2) = a1;
  *(v4 + 4) = a2;
  *(v4 + 5) = a3;
  sub_1D8CF2154(0, &qword_1EDCD76E0, 0x1E69E9630);
  v19[1] = v13;
  sub_1D8CF9C8C(&qword_1EDCD76F0, MEMORY[0x1E69E80B0]);
  v16 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB628, &unk_1D91BD698);
  sub_1D8CF4934(&qword_1EDCD7700, &qword_1ECABB628, &unk_1D91BD698);
  sub_1D91792CC();
  v17 = sub_1D9178E9C();
  (*(v9 + 8))(v12, v8);
  *(v4 + 3) = v17;
  return v4;
}

uint64_t sub_1D8CF61CC(uint64_t a1, double a2)
{
  v3 = v2;
  v63 = sub_1D9177E0C();
  v56 = *(v63 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E9C();
  v54 = *(v8 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177DEC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1D9177EDC();
  v17 = *(v16 - 8);
  v64 = v16;
  v65 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v52 - v26;
  sub_1D9176E0C();
  v28 = sub_1D9176E3C();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  v29 = OBJC_IVAR____TtC18PodcastsFoundationP33_D8DC80449EE77C4DA4BB398C4E1A338F10MultiTimer_startDate;
  swift_beginAccess();
  sub_1D8CF6C70(v27, v3 + v29);
  swift_endAccess();
  sub_1D9177ECC();
  v30 = *(a1 + 16);
  v55 = v8;
  v61 = v23;
  if (!v30)
  {
    v35 = v3[3];
    ObjectType = swift_getObjectType();

    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D8CF6AF4(a1);
    a1 = result;
    v32 = *(result + 16);
    if (v32)
    {
      goto LABEL_4;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v32 = *(a1 + 16);
  if (!v32)
  {
    goto LABEL_13;
  }

LABEL_4:
  v33 = v32 - 1;
  v34 = *(a1 + 8 * v33 + 32);
  *(a1 + 16) = v33;
  v35 = v3[3];
  ObjectType = swift_getObjectType();
LABEL_6:
  sub_1D9177F3C();
  *v15 = 0;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E7F28], v11);
  v52 = v35;
  MEMORY[0x1DA72A670](v20, v15, ObjectType, a2);
  (*(v12 + 8))(v15, v11);
  v37 = *(v65 + 8);
  v65 += 8;
  v60 = v37;
  v37(v20, v64);
  v57 = a1;
  v38 = *(a1 + 16);
  if (v38)
  {
    v39 = v3[2];
    v40 = (v57 + 32);
    v58 = &v69;
    v59 = v39;
    do
    {
      v41 = *v40;
      v42 = swift_allocObject();
      swift_weakInit();
      v71 = sub_1D915C400;
      v72 = v42;
      aBlock = MEMORY[0x1E69E9820];
      v68 = 1107296256;
      v69 = sub_1D8CF5F60;
      v70 = &block_descriptor_70_2;
      _Block_copy(&aBlock);
      v66 = MEMORY[0x1E69E7CC0];
      sub_1D8CF9C8C(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
      sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
      sub_1D91792CC();
      v43 = sub_1D9177F0C();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      sub_1D9177EEC();

      sub_1D9177F3C();
      sub_1D9178DAC();
      v60(v20, v64);
      swift_beginAccess();

      MEMORY[0x1DA729B90](v46);
      if (*((v3[6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v47 = *((v3[6] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D917863C();
      }

      sub_1D917869C();
      swift_endAccess();

      ++v40;
      --v38;
    }

    while (v38);
  }

  swift_getObjectType();
  v48 = swift_allocObject();
  swift_weakInit();
  v71 = sub_1D915C744;
  v72 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1D8CF5F60;
  v70 = &block_descriptor_74_2;
  v49 = _Block_copy(&aBlock);

  v50 = v53;
  sub_1D8F3EDE0();
  v51 = v62;
  sub_1D8CF4D08();
  sub_1D9178EFC();
  _Block_release(v49);
  (*(v56 + 8))(v51, v63);
  (*(v54 + 8))(v50, v55);

  sub_1D9178F3C();
  return (v60)(v61, v64);
}

uint64_t sub_1D8CF69B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

char *sub_1D8CF69F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB640, &qword_1D9192060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1D8CF6B1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8CF6B90()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR___PFDatabaseHangDetector_pingTimer);
    v2 = result;
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_1D9178F3C();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D8CF6C0C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (!*(Strong + OBJC_IVAR___PFDatabaseHangDetector_multiTimer))
    {
      sub_1D8CFBFE8();
    }
  }
}

uint64_t sub_1D8CF6C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D8CF6CF8(double a1)
{
  os_unfair_lock_assert_owner((*&v1[OBJC_IVAR___PFDatabaseHangDetector_lock] + 16));
  if (v1[OBJC_IVAR___PFDatabaseHangDetector_status])
  {
    if (v1[OBJC_IVAR___PFDatabaseHangDetector_status] == 1)
    {
      if (a1 > 0.1)
      {
        if (qword_1EDCD7B38 != -1)
        {
          swift_once();
        }

        v3 = sub_1D917744C();
        __swift_project_value_buffer(v3, qword_1EDCD77B0);
        v4 = v1;
        oslog = sub_1D917741C();
        v5 = sub_1D9178CDC();

        if (os_log_type_enabled(oslog, v5))
        {
          v6 = swift_slowAlloc();
          v7 = swift_slowAlloc();
          v30 = v7;
          *v6 = 136446466;
          v8 = *&v4[OBJC_IVAR___PFDatabaseHangDetector_label];
          v9 = *&v4[OBJC_IVAR___PFDatabaseHangDetector_label + 8];
          v10 = v4[OBJC_IVAR___PFDatabaseHangDetector_label + 16];
          v11 = sub_1D917949C();
          v13 = sub_1D8CFA924(v11, v12, &v30);

          *(v6 + 4) = v13;
          *(v6 + 12) = 2050;
          *(v6 + 14) = a1;
          _os_log_impl(&dword_1D8CEC000, oslog, v5, "%{public}s - Ping end after %{public}fs", v6, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v7);
          MEMORY[0x1DA72CB90](v7, -1, -1);
          MEMORY[0x1DA72CB90](v6, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      if (qword_1EDCD7B38 != -1)
      {
        swift_once();
      }

      v14 = sub_1D917744C();
      __swift_project_value_buffer(v14, qword_1EDCD77B0);
      v15 = v1;
      v16 = sub_1D917741C();
      v17 = sub_1D9178CFC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v30 = v19;
        *v18 = 136446466;
        v20 = *&v15[OBJC_IVAR___PFDatabaseHangDetector_label];
        v21 = *&v15[OBJC_IVAR___PFDatabaseHangDetector_label + 8];
        v22 = v15[OBJC_IVAR___PFDatabaseHangDetector_label + 16];
        v23 = sub_1D917949C();
        v25 = sub_1D8CFA924(v23, v24, &v30);

        *(v18 + 4) = v25;
        *(v18 + 12) = 2050;
        *(v18 + 14) = a1;
        _os_log_impl(&dword_1D8CEC000, v16, v17, "[CD HANG] [RESOLVED] %{public}s is no longer hanging after %{public}fs.", v18, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1DA72CB90](v19, -1, -1);
        MEMORY[0x1DA72CB90](v18, -1, -1);
      }

      v26 = *&v15[OBJC_IVAR___PFDatabaseHangDetector_label];
      v27 = *&v15[OBJC_IVAR___PFDatabaseHangDetector_label + 8];
      v28 = v15[OBJC_IVAR___PFDatabaseHangDetector_label + 16];

      sub_1D915C41C(a1);
    }
  }
}

uint64_t sub_1D8CF7068()
{
  v1 = v0;
  os_unfair_lock_assert_owner((*(v0 + OBJC_IVAR___PFDatabaseHangDetector_lock) + 16));
  v2 = OBJC_IVAR___PFDatabaseHangDetector_multiTimer;
  v3 = *(v0 + OBJC_IVAR___PFDatabaseHangDetector_multiTimer);
  if (v3)
  {
    swift_beginAccess();
    v4 = *(v3 + 48);
    if (v4 >> 62)
    {
      goto LABEL_17;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v5)
    {
      v6 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA72AA90](v6, v4);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_17:
            v5 = sub_1D917935C();
            goto LABEL_4;
          }

          v7 = *(v4 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        sub_1D9177EFC();

        ++v6;
      }

      while (v8 != v5);
    }

    v9 = *(v3 + 24);
    swift_getObjectType();
    sub_1D9178F2C();

    v10 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  *(v1 + OBJC_IVAR___PFDatabaseHangDetector_loggedFault) = 0;
  return result;
}

Swift::Void __swiftcall ApplicationStateMonitor.beginListening()()
{
  v1 = *(v0 + OBJC_IVAR___PodcastsApplicationStateMonitor_listenerTask);
  os_unfair_lock_lock((v1 + 24));
  sub_1D8CF77B8((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1D8CF761C(uint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  if (*a1)
  {
    v8 = *a1;
    sub_1D917891C();
  }

  sub_1D917880C();
  v9 = sub_1D917886C();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v11 = a2;
  v12 = sub_1D8E91268(0, 0, v7, &unk_1D91BC7F8, v10);

  *a1 = v12;
  return result;
}

uint64_t sub_1D8CF7778()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D8CF77D4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8D5FF18;

  return sub_1D8CF7944(a1, v5);
}

uint64_t sub_1D8CF788C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8D58924;

  return sub_1D8CF7944(a1, v5);
}

uint64_t sub_1D8CF7944(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D9C520;

  return v7(a1);
}

uint64_t sub_1D8CF7A3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D8D58924;

  return sub_1D8CF7AF0();
}

uint64_t sub_1D8CF7AF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D8D58924;

  return sub_1D8CF7B80();
}

uint64_t sub_1D8CF7BA0()
{
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB4F8, &qword_1D91BC808);
  inited = swift_initStackObject();
  v0[9] = inited;
  *(inited + 16) = xmmword_1D918A530;
  *(inited + 32) = @"MTApplicationDidBecomeActiveNotification";
  *(inited + 40) = @"MTApplicationDidEnterBackgroundNotification";
  v3 = objc_opt_self();
  v4 = @"MTApplicationDidBecomeActiveNotification";
  v5 = @"MTApplicationDidEnterBackgroundNotification";
  v0[10] = [v3 defaultCenter];
  v6 = swift_allocObject();
  v0[11] = v6;
  *(v6 + 16) = v1;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_1D914F094;

  return NSNotificationCenter.respond(to:with:)(inited, &unk_1D91BC818, v6);
}

uint64_t sub_1D8CF7D10()
{

  return swift_deallocObject();
}

uint64_t NSNotificationCenter.respond(to:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D8CF5330, 0, 0);
}

uint64_t sub_1D8CF7EF8()
{
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  if (sub_1D91789BC())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = *(MEMORY[0x1E69E8708] + 4);
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB72D0, &qword_1D9196A50);
    *v4 = v0;
    v4[1] = sub_1D8F4157C;
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 16);

    return MEMORY[0x1EEE6DAC8](v0 + 96, v8, v6, v5);
  }
}

uint64_t sub_1D8CF8030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_1D91766AC();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB72E0, &qword_1D9196A78) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v11 = sub_1D9178F7C();
  v6[10] = v11;
  v12 = *(v11 - 8);
  v6[11] = v12;
  v13 = *(v12 + 64) + 15;
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8CF81D0, 0, 0);
}

uint64_t sub_1D8CF8188(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CF81D0()
{
  v1 = v0[12];
  v0[2] = v0[3];
  sub_1D9178F8C();
  sub_1D8CF8188(&qword_1ECAAFCF8, MEMORY[0x1E6969F08]);

  sub_1D91789FC();
  sub_1D8CF8188(&unk_1ECAAFD00, MEMORY[0x1E6969EF8]);
  v2 = *(MEMORY[0x1E69E85B0] + 4);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1D8D7B788;
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];

  return MEMORY[0x1EEE6D8D0](v5, 0, 0);
}

uint64_t sub_1D8CF8EEC()
{
  result = sub_1D917739C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t DatabaseHangDetector.init(context:label:pingInterval:shortHangDuration:severeHangDuration:criticalHangDuration:criticalHangRepeatInterval:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v15 = sub_1D9177E0C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D9177E9C();
  v70 = *(v77 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v69 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D917739C();
  v67 = *(v68 - 1);
  v22 = *(v67 + 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D9178E8C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D917744C();
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v73 = v7;
  v72 = v15;
  v78 = v16;
  v71 = v19;
  v75 = v34;
  v76 = v32;
  v63 = v35;
  if (a2 == 2)
  {
    v36 = "PlaybackContext";
    v37 = 15;
  }

  else if (a2 == 1)
  {
    v36 = "ImportContext";
    v37 = 13;
  }

  else
  {
    if (a2)
    {
      aBlock = a2;
      result = sub_1D9179C9C();
      __break(1u);
      return result;
    }

    v36 = "PrivateContext";
    v37 = 14;
  }

  v64 = v25;
  v74 = v62 - v33;
  sub_1D917742C();
  v38 = type metadata accessor for DatabaseHangDetector(0);
  v39 = objc_allocWithZone(v38);
  v40 = OBJC_IVAR___PFDatabaseHangDetector_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *&v39[v40] = v41;
  v39[OBJC_IVAR___PFDatabaseHangDetector_status] = 0;
  *&v39[OBJC_IVAR___PFDatabaseHangDetector_multiTimer] = 0;
  v39[OBJC_IVAR___PFDatabaseHangDetector_loggedFault] = 0;
  *&v39[OBJC_IVAR___PFDatabaseHangDetector_context] = a1;
  v42 = &v39[OBJC_IVAR___PFDatabaseHangDetector_label];
  *v42 = v36;
  *(v42 + 1) = v37;
  v42[16] = 2;
  *&v39[OBJC_IVAR___PFDatabaseHangDetector_pingInterval] = a3;
  *&v39[OBJC_IVAR___PFDatabaseHangDetector_shortHangDuration] = a4;
  *&v39[OBJC_IVAR___PFDatabaseHangDetector_severeHangDuration] = a5;
  *&v39[OBJC_IVAR___PFDatabaseHangDetector_criticalHangDuration] = a6;
  *&v39[OBJC_IVAR___PFDatabaseHangDetector_criticalHangRepeatInterval] = a7;
  sub_1D8CF2154(0, &qword_1EDCD76E0, 0x1E69E9630);
  v43 = qword_1EDCD77C8;
  v66 = a1;
  if (v43 != -1)
  {
    swift_once();
  }

  v62[1] = qword_1EDCD77D0;
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D8CF9C8C(&qword_1EDCD76F0, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB628, &unk_1D91BD698);
  sub_1D8CF4934(&qword_1EDCD7700, &qword_1ECABB628, &unk_1D91BD698);
  sub_1D91792CC();
  v44 = sub_1D9178E9C();
  (*(v64 + 8))(v28, v24);
  *&v39[OBJC_IVAR___PFDatabaseHangDetector_pingTimer] = v44;
  (*(v75 + 16))(v63, v74, v76);
  v45 = v65;
  sub_1D917736C();
  (*(v67 + 4))(&v39[OBJC_IVAR___PFDatabaseHangDetector_signpost], v45, v68);
  v86.receiver = v39;
  v86.super_class = v38;
  v46 = objc_msgSendSuper2(&v86, sel_init);
  v47 = *&v46[OBJC_IVAR___PFDatabaseHangDetector_pingTimer];
  swift_getObjectType();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = sub_1D8CF6C08;
  v85 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_1D8CF5F60;
  v83 = &block_descriptor_29_0;
  v49 = _Block_copy(&aBlock);
  v50 = v46;
  swift_unknownObjectRetain();

  v51 = v69;
  sub_1D8F3EDE0();
  v52 = v71;
  sub_1D8CF4D08();
  sub_1D9178EFC();
  _Block_release(v49);
  swift_unknownObjectRelease();
  v53 = *(v78 + 8);
  v78 += 8;
  v68 = v53;
  v54 = v72;
  v53(v52, v72);
  v70 = *(v70 + 8);
  (v70)(v51, v77);

  v55 = swift_allocObject();
  v67 = v50;
  swift_unknownObjectWeakInit();

  v84 = sub_1D8CF6B8C;
  v85 = v55;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_1D8CF5F60;
  v83 = &block_descriptor_34_1;
  v56 = _Block_copy(&aBlock);

  sub_1D9177E4C();
  v79 = MEMORY[0x1E69E7CC0];
  sub_1D8CF9C8C(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v51, v52, v56);
  _Block_release(v56);

  v57 = v67;
  v68(v52, v54);
  (v70)(v51, v77);
  (*(v75 + 8))(v74, v76);

  v58 = v73;
  swift_getObjectType();
  v59 = *((*MEMORY[0x1E69E7D40] & *v58) + 0x30);
  v60 = *((*MEMORY[0x1E69E7D40] & *v58) + 0x34);
  swift_deallocPartialClassInstance();
  return v57;
}

uint64_t sub_1D8CF99F4()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8CF9A2C()
{
  v10 = sub_1D9178E0C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E4C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8CF9C8C(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D9178E4C();
  qword_1EDCD77D0 = result;
  return result;
}

uint64_t sub_1D8CF9C8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_83(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_91(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_95(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_96(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_99(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_101(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_103(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_105(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_107(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_108(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_109(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D8CFA418()
{
  v1 = v0;
  v2 = sub_1D9177DEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1D9177EDC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v0[OBJC_IVAR___PFDatabaseHangDetector_lock];
  os_unfair_lock_lock(v12 + 4);
  if (v0[OBJC_IVAR___PFDatabaseHangDetector_status])
  {
    if (qword_1EDCD7B38 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1EDCD77B0);
    v14 = v0;
    v15 = sub_1D917741C();
    v16 = sub_1D9178CFC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v42 = v18;
      *v17 = 136446210;
      v19 = *&v14[OBJC_IVAR___PFDatabaseHangDetector_label];
      v20 = *&v14[OBJC_IVAR___PFDatabaseHangDetector_label + 8];
      v21 = v14[OBJC_IVAR___PFDatabaseHangDetector_label + 16];
      v22 = sub_1D917949C();
      v24 = sub_1D8CFA924(v22, v23, &v42);

      *(v17 + 4) = v24;
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    os_unfair_lock_unlock(v12 + 4);
  }

  else
  {
    v0[OBJC_IVAR___PFDatabaseHangDetector_status] = 1;
    v25 = *&v0[OBJC_IVAR___PFDatabaseHangDetector_pingTimer];
    v26 = *&v1[OBJC_IVAR___PFDatabaseHangDetector_pingTimer];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D9177ECC();
    v28 = *&v1[OBJC_IVAR___PFDatabaseHangDetector_pingInterval];
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x1E69E7F28], v2);
    MEMORY[0x1DA72A670](v11, v6, ObjectType, v28);
    swift_unknownObjectRelease();
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
    if (qword_1EDCD7B38 != -1)
    {
      swift_once();
    }

    v29 = sub_1D917744C();
    __swift_project_value_buffer(v29, qword_1EDCD77B0);
    v30 = v1;
    v31 = sub_1D917741C();
    v32 = sub_1D9178D1C();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v42 = v34;
      *v33 = 136446210;
      v35 = *&v30[OBJC_IVAR___PFDatabaseHangDetector_label];
      v36 = *&v30[OBJC_IVAR___PFDatabaseHangDetector_label + 8];
      v37 = v30[OBJC_IVAR___PFDatabaseHangDetector_label + 16];
      v38 = sub_1D917949C();
      v40 = sub_1D8CFA924(v38, v39, &v42);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_1D8CEC000, v31, v32, "%{public}s - Monitoring Core Data queue hangs", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1DA72CB90](v34, -1, -1);
      MEMORY[0x1DA72CB90](v33, -1, -1);
    }

    os_unfair_lock_unlock(v12 + 4);
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1D8CFA924(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D8CFAB20(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1D8CFAD1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t sub_1D8CFA9F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D8CF4E20(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D917957C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D917834C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D8CF4E20(v10, 0);
        result = sub_1D917944C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1D8CFAB20(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1D8CF4DD4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1D917957C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D8CFAC30(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1D8E298E0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D8CFAD1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for DeviceCapacityMonitor()
{
  result = qword_1EDCD37E8;
  if (!qword_1EDCD37E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8CFAE90()
{
  result = sub_1D9176C2C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1D8CFAF70(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v68 = a4;
  v79 = a3;
  LODWORD(v70) = a2;
  v78 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_1D9177E0C();
  v76 = *(v5 - 8);
  v77 = v5;
  v6 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D9177DEC();
  v61 = *(v62 - 8);
  v8 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v60 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = sub_1D9177EDC();
  v64 = *(v71 - 8);
  v10 = *(v64 + 64);
  v11 = MEMORY[0x1EEE9AC00](v71);
  v59 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v59 - v13;
  v72 = sub_1D9178E0C();
  v14 = *(v72 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9178D8C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = sub_1D9177E9C();
  v73 = *(v20 - 8);
  v74 = v20;
  v21 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue;
  v66 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v65 = "activeNotificationName";
  sub_1D9177E7C();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D8CFBFA0(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8090], v72);
  v72 = v23;
  *&v4[v69] = sub_1D9178E4C();
  v24 = OBJC_IVAR___MTDeviceCapacityMonitor__capacityChangeObservers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB698, &qword_1D91BDB40);
  v25 = swift_allocObject();
  *(v25 + 16) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB6A0, &qword_1D91BDB48);
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = v25;
  *&v4[v24] = v26;
  *&v4[OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource] = 0;
  *&v4[OBJC_IVAR___MTDeviceCapacityMonitor_activeObserver] = 0;
  v29 = OBJC_IVAR___MTDeviceCapacityMonitor__activeNotificationName;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB6A8, &qword_1D91BDB50);
  v27 = swift_allocObject();
  *(v27 + 24) = 0;
  *(v27 + 16) = 0;
  *&v29[v4] = v27;
  v28 = &v4[OBJC_IVAR___MTDeviceCapacityMonitor_capacityThreshold];
  *v28 = v78;
  LODWORD(v29) = v70 & 1;
  v28[8] = v70 & 1;
  v30 = OBJC_IVAR___MTDeviceCapacityMonitor_url;
  v31 = sub_1D9176C2C();
  v69 = *(v31 - 8);
  v32 = *(v69 + 16);
  v70 = v31;
  v32(&v4[v30], v79);
  v33 = OBJC_IVAR___MTDeviceCapacityMonitor____capacityLevel;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB6B0, &qword_1D91BDB58);
  v34 = swift_allocObject();
  *(v34 + 24) = 0;
  *(v34 + 16) = 0;
  *&v4[v33] = v34;
  v87.receiver = v4;
  v87.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v87, sel_init);
  v36 = v35;
  if (v68)
  {
    dispatch_suspend(*&v35[OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue]);
    ObjectType = sub_1D9178E1C();
    v37 = v59;
    sub_1D9177ECC();
    v38 = v60;
    *v60 = 1;
    v39 = v61;
    v40 = v62;
    (*(v61 + 104))(v38, *MEMORY[0x1E69E7F48], v62);
    v68 = v29;
    v41 = v63;
    MEMORY[0x1DA7294F0](v37, v38);
    (*(v39 + 8))(v38, v40);
    v66 = *(v64 + 8);
    v66(v37, v71);
    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v85 = sub_1D9160094;
    v86 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v82 = 1107296256;
    v83 = sub_1D8CF5F60;
    v84 = &block_descriptor_81;
    v29 = _Block_copy(&aBlock);

    v43 = v72;
    sub_1D9177E4C();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v44 = v75;
    v45 = v77;
    sub_1D91792CC();
    v46 = ObjectType;
    MEMORY[0x1DA72A360](v41, v43, v44, v29);
    v47 = v29;
    LOBYTE(v29) = v68;
    _Block_release(v47);

    (*(v76 + 8))(v44, v45);
    (*(v73 + 8))(v43, v74);
    v66(v41, v71);
  }

  v48 = *&v36[OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue];
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v50 = swift_allocObject();
  v51 = v78;
  *(v50 + 16) = v49;
  *(v50 + 24) = v51;
  *(v50 + 32) = v29;
  v85 = sub_1D8DB98FC;
  v86 = v50;
  aBlock = MEMORY[0x1E69E9820];
  v82 = 1107296256;
  v83 = sub_1D8CF5F60;
  v84 = &block_descriptor_77_1;
  v52 = _Block_copy(&aBlock);
  v53 = v48;

  v54 = v72;
  sub_1D9177E4C();
  v80 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v55 = v75;
  v56 = v77;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v54, v55, v52);
  _Block_release(v52);

  (*(v76 + 8))(v55, v56);
  (*(v73 + 8))(v54, v74);

  if (!sub_1D8CFC728())
  {
    sub_1D9178D0C();
    if (qword_1EDCD5AB8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v57 = qword_1EDCD5AC0;
    sub_1D91772DC();
  }

  (*(v69 + 8))(v79, v70);
  return v36;
}

uint64_t sub_1D8CFBAE8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8CFBB20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFBB68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFBBB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFBBF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFBC40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFBC88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFBCD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFBD18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFBD60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFBDA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFBDF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFBE38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFBE80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFBEC8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8CFBF10(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8CFBF58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFBFA0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D8CFBFE8()
{
  v1 = v0;
  aBlock[13] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v3 = sub_1D917739C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D917734C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v56 = *(v1 + OBJC_IVAR___PFDatabaseHangDetector_lock);
  os_unfair_lock_lock(v56 + 4);
  if (*(v1 + OBJC_IVAR___PFDatabaseHangDetector_status) == 1 && (v14 = OBJC_IVAR___PFDatabaseHangDetector_multiTimer, !*(v1 + OBJC_IVAR___PFDatabaseHangDetector_multiTimer)))
  {
    v51 = v4;
    v52 = v3;
    v53 = ObjectType;
    if (qword_1EDCD77C8 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDCD77D0;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = type metadata accessor for MultiTimer(0);
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    v22 = v17;
    v23 = sub_1D8CF5FB8(v22, sub_1D915C674, v18);

    v24 = *(v1 + v14);
    *(v1 + v14) = v23;
    v54 = v23;

    v25 = OBJC_IVAR___PFDatabaseHangDetector_signpost;
    sub_1D917733C();
    v26 = sub_1D917737C();
    v27 = sub_1D9178F5C();
    if (sub_1D917918C())
    {
      v28 = swift_slowAlloc();
      v50 = v25;
      v29 = v28;
      *v28 = 0;
      v30 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v26, v27, v30, "Ping", "", v29, 2u);
      v31 = v29;
      v25 = v50;
      MEMORY[0x1DA72CB90](v31, -1, -1);
    }

    (*(v7 + 16))(v10, v13, v6);
    v32 = sub_1D91773FC();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v50 = sub_1D91773EC();
    (*(v7 + 8))(v13, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB640, &qword_1D9192060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189060;
    *(inited + 32) = *(v1 + OBJC_IVAR___PFDatabaseHangDetector_shortHangDuration);
    *(inited + 40) = *(v1 + OBJC_IVAR___PFDatabaseHangDetector_severeHangDuration);
    *(inited + 48) = *(v1 + OBJC_IVAR___PFDatabaseHangDetector_criticalHangDuration);
    sub_1D8CF61CC(inited, *(v1 + OBJC_IVAR___PFDatabaseHangDetector_criticalHangRepeatInterval));
    swift_setDeallocating();
    v49 = *(v1 + OBJC_IVAR___PFDatabaseHangDetector_context);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = v51;
    v37 = v52;
    v39 = v55;
    (*(v51 + 16))(v55, v1 + v25, v52);
    v40 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v41 = (v5 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    (*(v38 + 32))(v44 + v40, v39, v37);
    *(v44 + v41) = v50;
    *(v44 + v42) = v36;
    v45 = v53;
    *(v44 + v43) = v54;
    *(v44 + ((v43 + 15) & 0xFFFFFFFFFFFFFFF8)) = v45;
    aBlock[4] = sub_1D915C67C;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_88_0;
    v46 = _Block_copy(aBlock);

    [v49 performBlock_];
    _Block_release(v46);

    os_unfair_lock_unlock(v56 + 4);
    v47 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v15 = *MEMORY[0x1E69E9840];
    v16 = v56 + 4;

    os_unfair_lock_unlock(v16);
  }
}

uint64_t sub_1D8CFC5DC()
{
  v1 = sub_1D917739C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v6 = *(v0 + v4);

  v7 = *(v0 + v5);

  v8 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

BOOL sub_1D8CFC728()
{
  v1 = v0;
  v2 = sub_1D9177E0C();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MT_makeDispatchSourceTypeVfs(*(v1 + OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue));
  if (v11)
  {
    v24 = v6;
    v12 = *(v1 + OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource);
    *(v1 + OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource) = v11;
    v26 = v11;
    v25 = v11;
    swift_unknownObjectRelease();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = sub_1D916009C;
    v35 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v23[4] = &v32;
    v32 = sub_1D8CF5F60;
    v33 = &block_descriptor_85_2;
    v14 = _Block_copy(&aBlock);
    v27 = v7;
    v15 = v14;

    sub_1D9177E4C();
    v29 = MEMORY[0x1E69E7CC0];
    v23[3] = sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
    v23[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    v23[1] = sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    v23[0] = sub_1D8CF2154(0, &qword_1EDCD76E0, 0x1E69E9630);
    sub_1D9178EFC();
    _Block_release(v15);
    v16 = *(v28 + 8);
    v28 += 8;
    v16(v5, v2);
    v17 = *(v27 + 8);
    v27 += 8;
    v18 = v24;
    v17(v10, v24);

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = sub_1D91600A4;
    v35 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_1D8CF5F60;
    v33 = &block_descriptor_89;
    v20 = _Block_copy(&aBlock);

    sub_1D9177E4C();
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D91792CC();
    v21 = v25;
    sub_1D9178F0C();
    _Block_release(v20);
    v16(v5, v2);
    v17(v10, v18);

    dispatch_resume(v21);

    v11 = v26;
  }

  return v11 != 0;
}

dispatch_source_t MT_makeDispatchSourceTypeVfs(dispatch_queue_t queue)
{
  v1 = dispatch_source_create(MEMORY[0x1E69E9718], 0, 0x7204uLL, queue);

  return v1;
}

uint64_t sub_1D8CFCC6C(void *a1)
{
  sub_1D8CFCD00(a1);
  v3 = OBJC_IVAR___MTDeviceCapacityMonitor__activeNotificationName;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = a1;
  os_unfair_lock_lock((v4 + 24));
  sub_1D8CFCFC4((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  return swift_endAccess();
}

void sub_1D8CFCD00(void *a1)
{
  v2 = v1;
  v4 = sub_1D9178FBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___MTDeviceCapacityMonitor__activeNotificationName;
  swift_beginAccess();
  v10 = *(v2 + v9);

  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);
  v12 = v11;
  os_unfair_lock_unlock((v10 + 24));

  if (!a1)
  {
    if (!v11)
    {
      return;
    }

LABEL_11:
    v19 = OBJC_IVAR___MTDeviceCapacityMonitor_activeObserver;
    if (*(v2 + OBJC_IVAR___MTDeviceCapacityMonitor_activeObserver))
    {
      v20 = *(v2 + OBJC_IVAR___MTDeviceCapacityMonitor_activeObserver);

      sub_1D917785C();
    }

    if (a1)
    {
      v21 = objc_opt_self();
      v22 = a1;
      v23 = [v21 defaultCenter];
      v24 = v22;
      sub_1D9178FAC();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1D8CFBFA0(&qword_1EDCD5B10, MEMORY[0x1E6969F20]);
      v25 = sub_1D9177D9C();

      (*(v5 + 8))(v8, v4);
      v26 = *(v2 + v19);
      *(v2 + v19) = v25;
    }

    return;
  }

  if (!v11)
  {
    goto LABEL_11;
  }

  v13 = sub_1D917820C();
  v15 = v14;
  if (v13 == sub_1D917820C() && v15 == v16)
  {

    return;
  }

  v18 = sub_1D9179ACC();

  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }
}

id sub_1D8CFCFDC(id *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
  return v3;
}

id MediaItemMetadataLoader.init()()
{
  v14 = sub_1D9178E0C();
  v0 = *(v14 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v13 = OBJC_IVAR___MTMediaItemMetadataLoader_metadataLoadingQueue;
  v12[1] = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E4C();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v14);
  v8 = sub_1D9178E4C();
  v9 = v15;
  *&v15[v13] = v8;
  v10 = type metadata accessor for MediaItemMetadataLoader();
  v16.receiver = v9;
  v16.super_class = v10;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t sub_1D8CFD690(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFD6D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFD720(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFD768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFD7B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D8CFD7F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D8CFD888()
{
  result = qword_1EDCD7B70;
  if (!qword_1EDCD7B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCD7B70);
  }

  return result;
}

unint64_t sub_1D8CFD8D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4398, &qword_1D9188F00);
    v3 = sub_1D91797AC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1D8D33C70(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D8CFD9D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1D8CFDA60(uint64_t a1, uint64_t a2, char *a3)
{
  v28 = a1;
  v29 = a2;
  ObjectType = swift_getObjectType();
  v27 = sub_1D9178E0C();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9178D8C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1D9177E9C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v26 = OBJC_IVAR___PFFairPlayInvalidationManager_internalQueue;
  v12 = sub_1D8CFD888();
  v25[0] = "lidationManager]:";
  v25[1] = v12;
  sub_1D9177E3C();
  v33[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8090], v27);
  v13 = sub_1D9178E4C();
  v14 = v26;
  *&a3[v26] = v13;
  v15 = type metadata accessor for DispatchingFairPlayKeyLoading();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance] = v28;
  *&v16[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue] = v13;
  v34.receiver = v16;
  v34.super_class = v15;
  v17 = v13;
  *&a3[OBJC_IVAR___PFFairPlayInvalidationManager_keyLoader] = objc_msgSendSuper2(&v34, sel_init);
  v18 = *&a3[v14];
  v33[3] = type metadata accessor for CoreDataFairPlayEpisodeDataFetcher();
  v33[4] = &off_1F54681B0;
  v33[0] = v29;
  v19 = type metadata accessor for DispatchingFairPlayEpisodeDataFetching();
  v20 = objc_allocWithZone(v19);
  sub_1D8CFD9D8(v33, &v20[OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance]);
  *&v20[OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_responseQueue] = v18;
  v32.receiver = v20;
  v32.super_class = v19;
  v21 = v18;

  v22 = objc_msgSendSuper2(&v32, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v33);

  v23 = &a3[OBJC_IVAR___PFFairPlayInvalidationManager_episodeFetcher];
  *(v23 + 3) = v19;
  *(v23 + 4) = &off_1F5467218;
  *v23 = v22;
  v31.receiver = a3;
  v31.super_class = ObjectType;
  return objc_msgSendSuper2(&v31, sel_init);
}

id sub_1D8CFDE70(uint64_t a1)
{
  v3 = OBJC_IVAR___MTSecureDownloadRenewalManager_analyticsChannel;
  *&v1[v3] = [objc_allocWithZone(PFCoreAnalyticsChannel) init];
  v4 = &v1[OBJC_IVAR___MTSecureDownloadRenewalManager_bugReporter];
  v5 = [objc_opt_self() sharedInstance];
  v4[3] = sub_1D8CF2154(0, &unk_1EDCD0A30, off_1E85676A8);
  v4[4] = &protocol witness table for PFAutoBugCaptureBugReporter;
  *v4 = v5;
  v6 = OBJC_IVAR___MTSecureDownloadRenewalManager_delegate;
  *&v1[OBJC_IVAR___MTSecureDownloadRenewalManager_delegate] = 0;
  *&v1[OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader] = 0;
  v1[OBJC_IVAR___MTSecureDownloadRenewalManager_removalLock] = 0;
  v1[OBJC_IVAR___MTSecureDownloadRenewalManager_renewalLock] = 0;
  *&v1[v6] = a1;
  v7 = objc_allocWithZone(type metadata accessor for MediaItemMetadataLoader());
  swift_unknownObjectRetain();
  v8 = [v7 init];
  *&v1[OBJC_IVAR___MTSecureDownloadRenewalManager_metadataLoader] = v8;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SecureDownloadRenewalManager();
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1D8CFE1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSDRDiagnosticReporterClass_block_invoke(uint64_t a1)
{
  SymptomDiagnosticReporterLibrary();
  result = objc_getClass("SDRDiagnosticReporter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSDRDiagnosticReporterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSDRDiagnosticReporterClass_block_invoke_cold_1();
    return SymptomDiagnosticReporterLibrary();
  }

  return result;
}

uint64_t SymptomDiagnosticReporterLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SymptomDiagnosticReporterLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SymptomDiagnosticReporterLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E856B570;
    v6 = 0;
    SymptomDiagnosticReporterLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SymptomDiagnosticReporterLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!SymptomDiagnosticReporterLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t sub_1D8CFE398@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1D8CFE43C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D917744C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D917742C();
}

unint64_t sub_1D8CFE4DC()
{
  result = qword_1EDCD66D8;
  if (!qword_1EDCD66D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD66D8);
  }

  return result;
}

uint64_t sub_1D8CFE53C()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t static Array<A>.default(reachability:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9FA8, &qword_1D91B1888);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9195F30;
  *(v2 + 56) = &type metadata for AVFoundationErrorTransformer;
  *(v2 + 64) = &off_1F547F5F8;
  *(v2 + 96) = &type metadata for FairPlayErrorTransformer;
  *(v2 + 104) = &off_1F547F628;
  *(v2 + 136) = &type metadata for NSURLErrorTransformer;
  *(v2 + 144) = &off_1F547F688;
  *(v2 + 176) = &type metadata for MPCErrorTransformer;
  *(v2 + 184) = &off_1F547F658;
  *(v2 + 216) = &type metadata for ReachabilityTransformer;
  *(v2 + 224) = &off_1F547F750;
  *(v2 + 192) = a1;
  swift_unknownObjectRetain();
  return v2;
}

unint64_t sub_1D8CFE6AC()
{
  result = qword_1ECAB22B8;
  if (!qword_1ECAB22B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22B8);
  }

  return result;
}

unint64_t sub_1D8CFE704()
{
  result = qword_1ECAB22C0;
  if (!qword_1ECAB22C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22C0);
  }

  return result;
}

unint64_t sub_1D8CFE758()
{
  result = qword_1ECAB22A8;
  if (!qword_1ECAB22A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22A8);
  }

  return result;
}

unint64_t sub_1D8CFE7B0()
{
  result = qword_1ECAB22B0;
  if (!qword_1ECAB22B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22B0);
  }

  return result;
}

unint64_t sub_1D8CFE818()
{
  result = qword_1ECAB22F8;
  if (!qword_1ECAB22F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB22F8);
  }

  return result;
}

unint64_t sub_1D8CFE86C()
{
  result = qword_1ECAB2310;
  if (!qword_1ECAB2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2310);
  }

  return result;
}

unint64_t sub_1D8CFE8C4()
{
  result = qword_1ECAB2328;
  if (!qword_1ECAB2328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2328);
  }

  return result;
}

unint64_t sub_1D8CFE918()
{
  result = qword_1ECAB2330;
  if (!qword_1ECAB2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2330);
  }

  return result;
}

unint64_t sub_1D8CFE96C()
{
  result = qword_1ECAB2338;
  if (!qword_1ECAB2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2338);
  }

  return result;
}

unint64_t sub_1D8CFE9C0()
{
  result = qword_1ECAB2320;
  if (!qword_1ECAB2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2320);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FileFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D8CFEACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 7u)
  {
    if (((1 << a5) & 0xE6) != 0)
    {
    }

    if (a5 == 3)
    {
    }

    if (a5 == 4)
    {
    }
  }

  return result;
}

uint64_t PlaybackIntent.Context.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA098, &qword_1D91B1F20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v20 = *(v1 + 2);
  v21 = v9;
  v10 = *(v1 + 3);
  v18 = *(v1 + 4);
  v19 = v10;
  v17 = v1[40];
  v11 = *(v1 + 6);
  v32 = *(v1 + 5);
  v33 = v11;
  v34[0] = *(v1 + 7);
  *(v34 + 13) = *(v1 + 125);
  v12 = *(v1 + 4);
  v30 = *(v1 + 3);
  v31 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8D0ABA0();
  sub_1D9179F1C();
  LOBYTE(v25) = v8;
  LOBYTE(v22[0]) = 0;
  sub_1D8D0201C();
  v14 = v35;
  sub_1D91799FC();
  if (v14)
  {
    return (*(v4 + 8))(v7, v3);
  }

  *&v25 = v21;
  *(&v25 + 1) = v20;
  *&v26 = v19;
  *(&v26 + 1) = v18;
  LOBYTE(v27) = v17;
  LOBYTE(v22[0]) = 1;
  sub_1D8D0B37C(v21, v20, v19, v18, v17);
  sub_1D8D09354();
  sub_1D917999C();
  sub_1D8CFF364(v25, *(&v25 + 1), v26, *(&v26 + 1), v27);
  v27 = v32;
  v28 = v33;
  v29[0] = v34[0];
  *(v29 + 13) = *(v34 + 13);
  v25 = v30;
  v26 = v31;
  v24 = 2;
  sub_1D8D088B4(&v30, v22, &qword_1ECAB9F78, qword_1D91B16D0);
  sub_1D8D0B390();
  sub_1D917999C();
  v22[2] = v27;
  v22[3] = v28;
  *v23 = v29[0];
  *&v23[13] = *(v29 + 13);
  v22[0] = v25;
  v22[1] = v26;
  sub_1D8D08A50(v22, &qword_1ECAB9F78, qword_1D91B16D0);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D8CFEEA8()
{
  result = qword_1ECAB2538;
  if (!qword_1ECAB2538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2538);
  }

  return result;
}

unint64_t sub_1D8CFEF00()
{
  result = qword_1ECAB2540;
  if (!qword_1ECAB2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2540);
  }

  return result;
}

unint64_t sub_1D8CFEF64()
{
  result = qword_1ECAB2528;
  if (!qword_1ECAB2528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2528);
  }

  return result;
}

unint64_t sub_1D8CFEFBC()
{
  result = qword_1ECAB2510;
  if (!qword_1ECAB2510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2510);
  }

  return result;
}

unint64_t sub_1D8CFF014()
{
  result = qword_1ECAB2518;
  if (!qword_1ECAB2518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2518);
  }

  return result;
}

unint64_t sub_1D8CFF078()
{
  result = qword_1ECAB2550;
  if (!qword_1ECAB2550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2550);
  }

  return result;
}

unint64_t sub_1D8CFF0D0()
{
  result = qword_1ECAB2558;
  if (!qword_1ECAB2558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2558);
  }

  return result;
}

unint64_t sub_1D8CFF13C()
{
  result = qword_1ECAB2570;
  if (!qword_1ECAB2570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2570);
  }

  return result;
}

uint64_t sub_1D8CFF190()
{
  v1 = 0x7478654E7075;
  v2 = 0x616C507472616D73;
  if (*v0 != 2)
  {
    v2 = 0x746C7561666564;
  }

  if (*v0)
  {
    v1 = 0x657551664F646E65;
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

uint64_t storeEnumTagSinglePayload for CategoriesSyncUtil.CategoriesSyncError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D8CFF2C8()
{
  v1 = 1684366707;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E696769726FLL;
  }
}

uint64_t sub_1D8CFF31C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 33))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 32);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D8CFF364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_1D8CFEACC(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1D8CFF378(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 85))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

__n128 __swift_memcpy85_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t EpisodeListSettings.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7DF8, &qword_1D919C4C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - v6;
  v8 = v1[3];
  v33 = v1[2];
  v34 = v8;
  v35 = *(v1 + 64);
  v9 = v1[1];
  v31 = *v1;
  v32 = v9;
  v36 = *(v1 + 65);
  v18 = *(v1 + 9);
  v10 = *(v1 + 80);
  v17[4] = *(v1 + 81);
  v17[5] = v10;
  v11 = *(v1 + 82);
  v17[2] = *(v1 + 83);
  v17[3] = v11;
  v12 = *(v1 + 84);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8CFF83C(&v31, &v26);
  sub_1D8D02070();
  sub_1D9179F1C();
  v28 = v33;
  v29 = v34;
  v30 = v35;
  v26 = v31;
  v27 = v32;
  v38 = 0;
  sub_1D8D020C4();
  v14 = v19;
  sub_1D91799FC();
  if (v14)
  {
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    v22 = v27;
    sub_1D8D0D2AC(&v21);
  }

  else
  {
    v15 = v18;
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    v22 = v27;
    sub_1D8D0D2AC(&v21);
    LOBYTE(v20) = v36;
    v37 = 1;
    sub_1D8D0D300();
    sub_1D91799FC();
    v20 = v15;
    v37 = 2;
    type metadata accessor for MTEpisodePubDateLimit(0);
    sub_1D8D00734(&qword_1ECAAFCF0);
    sub_1D91799FC();
    LOBYTE(v20) = 3;
    sub_1D91799CC();
    LOBYTE(v20) = 4;
    sub_1D91799CC();
    LOBYTE(v20) = 5;
    sub_1D91799CC();
    LOBYTE(v20) = 6;
    sub_1D91799CC();
    LOBYTE(v20) = v12;
    v37 = 7;
    sub_1D8D0D474();
    sub_1D91799FC();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D8CFF794()
{
  result = qword_1ECAB1EC0;
  if (!qword_1ECAB1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1EC0);
  }

  return result;
}

unint64_t sub_1D8CFF7E8()
{
  result = qword_1ECAB1EC8;
  if (!qword_1ECAB1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1EC8);
  }

  return result;
}

unint64_t sub_1D8CFF8A8()
{
  result = qword_1ECAB2378;
  if (!qword_1ECAB2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2378);
  }

  return result;
}

unint64_t sub_1D8CFF8FC()
{
  result = qword_1ECAB2380;
  if (!qword_1ECAB2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2380);
  }

  return result;
}

unint64_t sub_1D8CFF950()
{
  result = qword_1ECAB2460;
  if (!qword_1ECAB2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2460);
  }

  return result;
}

unint64_t sub_1D8CFF9A4()
{
  result = qword_1ECAB2468;
  if (!qword_1ECAB2468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2468);
  }

  return result;
}

unint64_t sub_1D8CFF9F8()
{
  result = qword_1ECAB23C8;
  if (!qword_1ECAB23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23C8);
  }

  return result;
}

unint64_t sub_1D8CFFA4C()
{
  result = qword_1ECAB23D0;
  if (!qword_1ECAB23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23D0);
  }

  return result;
}

unint64_t sub_1D8CFFAB0()
{
  result = qword_1ECAB2450;
  if (!qword_1ECAB2450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2450);
  }

  return result;
}

unint64_t sub_1D8CFFB08()
{
  result = qword_1ECAB2410;
  if (!qword_1ECAB2410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2410);
  }

  return result;
}

unint64_t sub_1D8CFFB60()
{
  result = qword_1ECAB23D8;
  if (!qword_1ECAB23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23D8);
  }

  return result;
}

unint64_t sub_1D8CFFBB8()
{
  result = qword_1ECAB23F0;
  if (!qword_1ECAB23F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23F0);
  }

  return result;
}

unint64_t sub_1D8CFFC10()
{
  result = qword_1ECAB23A0;
  if (!qword_1ECAB23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23A0);
  }

  return result;
}

unint64_t sub_1D8CFFC64()
{
  result = qword_1ECAB2438;
  if (!qword_1ECAB2438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2438);
  }

  return result;
}

unint64_t sub_1D8CFFCC8()
{
  result = qword_1ECAB2408;
  if (!qword_1ECAB2408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2408);
  }

  return result;
}

unint64_t sub_1D8CFFD2C()
{
  result = qword_1ECAB23A8;
  if (!qword_1ECAB23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23A8);
  }

  return result;
}

unint64_t sub_1D8CFFD90()
{
  result = qword_1ECAB2440;
  if (!qword_1ECAB2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2440);
  }

  return result;
}

unint64_t sub_1D8CFFDE8()
{
  result = qword_1ECAB23B8;
  if (!qword_1ECAB23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23B8);
  }

  return result;
}

unint64_t sub_1D8CFFE4C()
{
  result = qword_1ECAB2368;
  if (!qword_1ECAB2368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2368);
  }

  return result;
}

unint64_t sub_1D8CFFEA0()
{
  result = qword_1ECAB2478;
  if (!qword_1ECAB2478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2478);
  }

  return result;
}

unint64_t sub_1D8CFFEF4()
{
  result = qword_1ECAB2480;
  if (!qword_1ECAB2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2480);
  }

  return result;
}

unint64_t sub_1D8CFFF48()
{
  result = qword_1ECAB23F8;
  if (!qword_1ECAB23F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB23F8);
  }

  return result;
}

unint64_t sub_1D8CFFF9C(char a1)
{
  result = 0x64616F6C6E776F64;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x796C746E65636572;
      break;
    case 5:
      result = 0x6C696176416C6C61;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x6F4E6E657473696CLL;
      break;
    case 9:
      result = 0x7079746F746F7270;
      break;
    case 10:
      result = 0x6F7369704577656ELL;
      break;
    case 11:
      result = 0x65756E69746E6F63;
      break;
    case 12:
      result = 0x704574736574616CLL;
      break;
    case 13:
      result = 0x6B72616D6B6F6F62;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 2003789939;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0x706F546863746177;
      break;
    default:
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CropCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CropCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D8D00380()
{
  if (*v0)
  {
    result = 0x656761506C6C7566;
  }

  else
  {
    result = 0xD000000000000014;
  }

  *v0;
  return result;
}

uint64_t sub_1D8D003C8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 == 6)
    {
      v5 = 0xD000000000000015;
    }

    v6 = 0x6961725465646968;
    if (v1 != 4)
    {
      v6 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x657079547473696CLL;
    v3 = 0x4C65746144627570;
    if (v1 != 2)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0)
    {
      v2 = 1953656691;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t EpisodeSortType.rawValue.getter(char a1)
{
  result = 0x65746144627570;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x6B72616D6B6F6F62;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0x64616F6C6E776F64;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x656C746974;
      break;
    case 12:
      result = 0x796C746E65636572;
      break;
    case 13:
      result = 0x6F4E6E657473696CLL;
      break;
    case 14:
      result = 0x53794270756F7267;
      break;
    case 15:
      result = 0x7079746F746F7270;
      break;
    case 16:
      result = 0x706F546863746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8D00734(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTEpisodePubDateLimit(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8D00778(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1D9179B9C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

unint64_t sub_1D8D00864()
{
  result = qword_1ECAB1EA8;
  if (!qword_1ECAB1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1EA8);
  }

  return result;
}

unint64_t sub_1D8D008BC()
{
  result = qword_1ECAB1E80;
  if (!qword_1ECAB1E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1E80);
  }

  return result;
}

unint64_t sub_1D8D00928()
{
  result = qword_1ECAB2580;
  if (!qword_1ECAB2580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2580);
  }

  return result;
}

uint64_t sub_1D8D0097C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D8D009E8()
{
  result = qword_1ECAB2600;
  if (!qword_1ECAB2600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2600);
  }

  return result;
}

unint64_t sub_1D8D00A40()
{
  result = qword_1ECAB2608;
  if (!qword_1ECAB2608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2608);
  }

  return result;
}

unint64_t sub_1D8D00AC0()
{
  result = qword_1ECAB2598;
  if (!qword_1ECAB2598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2598);
  }

  return result;
}

unint64_t sub_1D8D00B2C()
{
  result = qword_1ECAB25F0;
  if (!qword_1ECAB25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25F0);
  }

  return result;
}

unint64_t sub_1D8D00B80()
{
  result = qword_1ECAB25C0;
  if (!qword_1ECAB25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25C0);
  }

  return result;
}

unint64_t sub_1D8D00BD4()
{
  result = qword_1ECAB25A8;
  if (!qword_1ECAB25A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25A8);
  }

  return result;
}

uint64_t sub_1D8D00C84()
{
  v0 = type metadata accessor for SyncKeysUserDefaultsStore();
  swift_allocObject();
  v6[3] = v0;
  v6[4] = &off_1F5485648;
  v6[0] = sub_1D8D0E6B8();
  v1 = type metadata accessor for SyncKeysRepository();
  v2 = objc_allocWithZone(v1);
  sub_1D8CFD9D8(v6, v2 + OBJC_IVAR____TtC18PodcastsFoundation18SyncKeysRepository_syncKeysStore);
  v5.receiver = v2;
  v5.super_class = v1;

  v3 = objc_msgSendSuper2(&v5, sel_init);

  result = __swift_destroy_boxed_opaque_existential_1Tm(v6);
  qword_1ECAB1F78 = v3;
  return result;
}

uint64_t sub_1D8D00E64(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 0;
    }

    v2 = 40;
  }

  else
  {
    v2 = 32;
  }

  v3 = *(*v1 + v2);

  v4 = sub_1D8D0ED94();

  return v4;
}

uint64_t sub_1D8D00FEC()
{
  v10 = sub_1D9178E0C();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9178D8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1D8CFD888();
  sub_1D9177E7C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8D0EF30(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF4934(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D9178E4C();
  qword_1EDCD0998 = result;
  return result;
}

uint64_t sub_1D8D0124C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x646572616873;
  if (v2 != 1)
  {
    v4 = 0x647261646E617473;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x73676E6974746573;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x646572616873;
  if (*a2 != 1)
  {
    v8 = 0x647261646E617473;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73676E6974746573;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
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

uint64_t MediaCacheDeleteProcessorDataSource.init(userDefaults:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD000000000000023;
  a2[1] = 0x80000001D918C180;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9189060;
  *(v4 + 32) = sub_1D917820C();
  *(v4 + 40) = v5;
  *(v4 + 48) = sub_1D917820C();
  *(v4 + 56) = v6;
  *(v4 + 64) = sub_1D917820C();
  *(v4 + 72) = v7;
  a2[2] = v4;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189060;
  *(v8 + 32) = sub_1D917820C();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_1D917820C();
  *(v8 + 56) = v10;
  result = sub_1D917820C();
  *(v8 + 64) = result;
  *(v8 + 72) = v12;
  a2[3] = v8;
  a2[4] = a1;
  return result;
}

void *CoreDataEpisodeAndShowStorage.init(context:)(void *a1)
{
  v2 = v1;
  v26 = a1;
  v27 = sub_1D9178FBC();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F68, &qword_1D918DD00);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_1D91778DC();
  v1[2] = v10;
  v28 = v10;
  sub_1D8CF48EC(&qword_1EDCD0B50, &qword_1ECAB4F68, &qword_1D918DD00);

  v28 = sub_1D9177C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F70, &qword_1D918DD08);
  sub_1D8CF48EC(&qword_1EDCD0C80, &qword_1ECAB4F70, &qword_1D918DD08);
  v11 = sub_1D9177B1C();

  v2[3] = v11;
  v12 = *(v7 + 48);
  v13 = *(v7 + 52);
  swift_allocObject();
  v14 = sub_1D91778DC();
  v2[4] = v14;
  v28 = v14;

  v28 = sub_1D9177C2C();
  v15 = sub_1D9177B1C();

  v2[5] = v15;
  v2[6] = 0;
  v2[7] = 0;
  v16 = v26;
  v2[8] = v26;
  v2[9] = 0;
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 defaultCenter];
  v20 = *MEMORY[0x1E695D360];
  sub_1D9178FCC();

  sub_1D8D01764();

  v21 = v27;
  v22 = sub_1D9177D9C();

  (*(v3 + 8))(v6, v21);
  v23 = v2[9];
  v2[9] = v22;

  return v2;
}

unint64_t sub_1D8D01764()
{
  result = qword_1EDCD5B10;
  if (!qword_1EDCD5B10)
  {
    sub_1D9178FBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5B10);
  }

  return result;
}

unint64_t sub_1D8D017BC()
{
  result = qword_1EDCD7B50;
  if (!qword_1EDCD7B50)
  {
    sub_1D9178D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD7B50);
  }

  return result;
}

uint64_t sub_1D8D01824()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v38 = &v34 - v4;
  v5 = sub_1D9178DFC();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5188, &qword_1D918E308);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51B8, &qword_1D918E338);
  v39 = *(v37 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C0, qword_1D918E340);
  v17 = *(v16 - 8);
  v40 = v16;
  v41 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v35 = &v34 - v19;
  v21 = v0[11];
  v20 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v21);
  (*(v20 + 16))(v46, v21, v20);
  v44 = v46[0];
  v45 = v46[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51B0, &qword_1D918E330);
  sub_1D8CF48EC(qword_1EDCD3D30, &qword_1ECAB51B0, &qword_1D918E330);
  sub_1D9177B9C();

  v46[0] = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  sub_1D8CF48EC(qword_1EDCD0CF0, &qword_1ECAB5188, &qword_1D918E308);
  sub_1D8CF48EC(&qword_1EDCD0B40, &qword_1ECAB4B30, &unk_1D918E010);
  sub_1D9177BEC();
  (*(v9 + 8))(v12, v8);
  v22 = v36;
  sub_1D9178DDC();
  v46[0] = v0[2];
  v23 = v46[0];
  v24 = sub_1D9178DBC();
  v25 = v38;
  (*(*(v24 - 8) + 56))(v38, 1, 1, v24);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0C88, &qword_1ECAB51B8, &qword_1D918E338);
  sub_1D8D02DF0();
  v26 = v23;
  v27 = v35;
  v28 = v37;
  sub_1D9177CFC();
  sub_1D8D08A50(v25, &qword_1ECAB4D70, &unk_1D918BCE0);

  (*(v42 + 8))(v22, v43);
  (*(v39 + 8))(v15, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1D8E7B888;
  *(v29 + 24) = v0;
  sub_1D8CF48EC(&unk_1EDCD0C28, &qword_1ECAB51C0, qword_1D918E340);

  v30 = v40;
  v31 = sub_1D9177D9C();

  (*(v41 + 8))(v27, v30);
  v32 = v1[28];
  v1[28] = v31;
}

uint64_t sub_1D8D01E4C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8D01E88@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  *a1 = *(*v1 + 32);
  a1[1] = v2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t MediaCacheDeleteRemovalProcessorDataSource.init(userDefaults:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xD000000000000023;
  a2[1] = 0x80000001D91CA610;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9189060;
  *(v4 + 32) = sub_1D917820C();
  *(v4 + 40) = v5;
  *(v4 + 48) = sub_1D917820C();
  *(v4 + 56) = v6;
  *(v4 + 64) = sub_1D917820C();
  *(v4 + 72) = v7;
  a2[2] = v4;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D9189060;
  *(v8 + 32) = sub_1D917820C();
  *(v8 + 40) = v9;
  *(v8 + 48) = sub_1D917820C();
  *(v8 + 56) = v10;
  result = sub_1D917820C();
  *(v8 + 64) = result;
  *(v8 + 72) = v12;
  a2[3] = v8;
  a2[4] = a1;
  return result;
}

unint64_t sub_1D8D0201C()
{
  result = qword_1ECAB2508;
  if (!qword_1ECAB2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2508);
  }

  return result;
}

unint64_t sub_1D8D02070()
{
  result = qword_1ECAB1ED0;
  if (!qword_1ECAB1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1ED0);
  }

  return result;
}

unint64_t sub_1D8D020C4()
{
  result = qword_1ECAB2360;
  if (!qword_1ECAB2360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2360);
  }

  return result;
}

unint64_t sub_1D8D02118()
{
  result = qword_1ECAB2420;
  if (!qword_1ECAB2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2420);
  }

  return result;
}

unint64_t sub_1D8D02180()
{
  result = qword_1ECAB2418;
  if (!qword_1ECAB2418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2418);
  }

  return result;
}

unint64_t sub_1D8D021D4()
{
  result = qword_1ECAB2398;
  if (!qword_1ECAB2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2398);
  }

  return result;
}

unint64_t sub_1D8D02244()
{
  result = qword_1ECAB25F8;
  if (!qword_1ECAB25F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB25F8);
  }

  return result;
}

uint64_t sub_1D8D022AC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0xD00000000000001BLL;
    if (v1 != 1)
    {
      v4 = 0x51746E6576657270;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x616C507472617473;
    }
  }

  else
  {
    v2 = 0xD000000000000012;
    if (v1 != 3)
    {
      v2 = 0xD00000000000001FLL;
    }

    if (*v0 <= 4u)
    {
      return v2;
    }

    else
    {
      return 0x6B63616279616C70;
    }
  }
}

uint64_t PlaybackIntent.options.getter()
{
  v1 = *(v0 + *(type metadata accessor for PlaybackIntent(0) + 28));
}

void sub_1D8D02418(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5 = [a1 stringForKey_];

  if (v5)
  {
    v6 = sub_1D917820C();
    v8 = v7;

    v9 = MEMORY[0x1E69E6158];
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v9 = 0;
    a2[2] = 0;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[3] = v9;
}

uint64_t MediaCacheDeleteProcessor.init(managedObjectContext:workQueue:userDefaults:debounceInterval:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v61 = sub_1D9178E0C();
  v60 = *(v61 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v59 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D9178D8C();
  v12 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  v53 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9177E9C();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v50[1] = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v17 = swift_allocObject();
  *(v17 + 20) = 0;
  *(v17 + 16) = 0;
  v63 = a4;
  *(a4 + 24) = v17;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  MediaCacheDeleteProcessorDataSource.init(userDefaults:)(a3, v69);
  v18 = type metadata accessor for CoreDataEpisodeAndShowStorage();
  swift_allocObject();
  v19 = a1;
  v20 = a2;
  v62 = a3;
  v21 = CoreDataEpisodeAndShowStorage.init(context:)(v19);
  v23 = v69[0];
  v22 = v69[1];
  v50[0] = v69[0];
  v24 = v69[2];
  v25 = v69[3];
  v26 = v70;
  type metadata accessor for DebouncedEpisodeAndShowProcessor();
  v27 = swift_allocObject();
  v68[3] = &type metadata for MediaCacheDeleteProcessorDataSource;
  v68[4] = &protocol witness table for MediaCacheDeleteProcessorDataSource;
  v28 = swift_allocObject();
  v68[0] = v28;
  v28[2] = v23;
  v28[3] = v22;
  v55 = v24;
  v28[4] = v24;
  v28[5] = v25;
  v58 = v25;
  v28[6] = v26;
  v67[4] = &protocol witness table for CoreDataEpisodeAndShowStorage;
  v67[3] = v18;
  v67[0] = v21;
  v52 = v21;
  v66[3] = &type metadata for MediaCacheDeleteProcessorDelegate;
  v66[4] = &protocol witness table for MediaCacheDeleteProcessorDelegate;
  v66[0] = v19;
  v66[1] = v20;
  *(v27 + 152) = 0u;
  *(v27 + 168) = 0u;
  *(v27 + 184) = 0;
  *(v27 + 216) = 0u;
  *(v27 + 232) = 0u;
  *(v27 + 248) = 0;
  *(v27 + 256) = 5;
  *(v27 + 272) = 0;
  *(v27 + 280) = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v32 = v26;
  v33 = v19;
  v34 = v20;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v51 = v32;
  v56 = v33;
  v54 = v34;

  *(v27 + 192) = sub_1D91778DC();
  v35 = *(v29 + 48);
  v36 = *(v29 + 52);
  swift_allocObject();
  *(v27 + 200) = sub_1D91778DC();
  sub_1D8CFD9D8(v68, v27 + 24);
  sub_1D8CFD9D8(v67, v27 + 64);
  sub_1D8CFD888();
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_1D917946C();

  v64 = 0xD00000000000001DLL;
  v65 = 0x80000001D91CA5F0;
  MEMORY[0x1DA7298F0](v50[0], v22);
  sub_1D9177E4C();
  v64 = MEMORY[0x1E69E7CC0];
  sub_1D8D017BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8D02D6C();
  sub_1D91792CC();
  (*(v60 + 104))(v59, *MEMORY[0x1E69E8090], v61);
  *(v27 + 16) = sub_1D9178E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B38, &qword_1D918C0F8);
  v37 = swift_allocObject();
  *(v37 + 20) = 0;
  *(v37 + 16) = 3;
  *(v27 + 264) = v37;
  v64 = [objc_opt_self() falsePredicate];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B40, &qword_1D918C100);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *(v27 + 208) = sub_1D917795C();
  sub_1D8CFD9D8(v66, v27 + 112);
  *(v27 + 104) = 100;
  v41 = *(v27 + 96);
  __swift_project_boxed_opaque_existential_1((v27 + 64), *(v27 + 88));
  v42 = *(v27 + 48);
  v43 = *(v27 + 56);
  __swift_project_boxed_opaque_existential_1((v27 + 24), v42);
  (*(v43 + 16))(v42, v43);
  (*(v41 + 24))();

  v44 = *(v27 + 96);
  __swift_project_boxed_opaque_existential_1((v27 + 64), *(v27 + 88));
  v45 = *(v27 + 48);
  v46 = *(v27 + 56);
  __swift_project_boxed_opaque_existential_1((v27 + 24), v45);
  (*(v46 + 24))(v45, v46);
  (*(v44 + 32))();

  sub_1D8D01824();
  sub_1D8D0F278();
  __swift_destroy_boxed_opaque_existential_1Tm(v66);
  __swift_destroy_boxed_opaque_existential_1Tm(v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);

  v47 = v54;

  v48 = v56;

  *(v63 + 32) = v27;
  return result;
}

uint64_t sub_1D8D02CD4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocObject();
}

unint64_t sub_1D8D02D6C()
{
  result = qword_1EDCD7B60;
  if (!qword_1EDCD7B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECAB7470, &qword_1D918C0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD7B60);
  }

  return result;
}

unint64_t sub_1D8D02DF0()
{
  result = qword_1EDCD0980;
  if (!qword_1EDCD0980)
  {
    sub_1D8CFD888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD0980);
  }

  return result;
}

uint64_t sub_1D8D02E48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D8D02EAC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v2 > 1)
      {
        if (v2 ^ 2 | v3)
        {
          if (v7 != 3 || v5 != 3)
          {
            goto LABEL_9;
          }
        }

        else if (v7 != 3 || v5 != 2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (!(v2 | v3))
        {
          if (v7 == 3 && !(v6 | v5))
          {
            goto LABEL_25;
          }

          goto LABEL_9;
        }

        if (v7 != 3 || v5 != 1)
        {
          goto LABEL_9;
        }
      }

      if (!v6)
      {
LABEL_25:
        v9 = 1;
        goto LABEL_26;
      }
    }
  }

  else if (*(a1 + 16))
  {
    v8 = *(a1 + 8);
  }

  else if (!*(a2 + 16))
  {
    goto LABEL_25;
  }

LABEL_9:
  v9 = 0;
LABEL_26:
  sub_1D8D02FE4(v5, v6, v7);
  sub_1D8D02FCC(v2, v3, v4);
  sub_1D8D02FCC(v5, v6, v7);
  return v9;
}

uint64_t sub_1D8D02FCC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1D8D02FE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t AssetBackgroundSessionDescriptor.createJobCache(libraryPath:)(uint64_t a1)
{
  v27 = a1;
  v1 = sub_1D9178E0C();
  v32 = *(v1 - 8);
  v33 = v1;
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D9178D8C();
  v4 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C60, &unk_1D918CD70);
  v9 = *(v26 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v12 = &v25 - v11;
  v13 = sub_1D9176C2C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for DownloadTaskIdentifier();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = v18;
  v35 = AssociatedTypeWitness;
  v36 = &protocol witness table for DownloadTaskIdentifier<A>;
  v37 = AssociatedConformanceWitness;
  v20 = MEMORY[0x1E69E6168];
  v38 = MEMORY[0x1E69E6168];
  v25 = type metadata accessor for DiskAssetCache();
  AssetBackgroundSessionDescriptor.name.getter();
  sub_1D9176B2C();

  v34 = v18;
  v35 = AssociatedTypeWitness;
  v36 = &protocol witness table for DownloadTaskIdentifier<A>;
  v37 = AssociatedConformanceWitness;
  v38 = v20;
  type metadata accessor for InMemoryAssetCache();
  sub_1D9177A1C();
  sub_1D8CF48EC(qword_1EDCD5C70, &qword_1ECAB4C60, &unk_1D918CD70);
  v21 = v26;
  v22 = sub_1D8D11AA4(5000000);
  (*(v9 + 8))(v12, v21);
  sub_1D8CFD888();
  sub_1D9177E7C();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1D8D017BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v32 + 104))(v31, *MEMORY[0x1E69E8090], v33);
  v23 = sub_1D9178E4C();
  LOBYTE(v34) = 0;
  return DiskAssetCache.__allocating_init(cacheDirectory:memoryBuffer:writeQueue:cacheDeleteUrgency:)(v16, v22, v23, 0x800uLL);
}

uint64_t sub_1D8D034CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v41 = a7;
  v42 = a4;
  v40 = *MEMORY[0x1E69E7D40] & *a5;
  v12 = sub_1D9177E0C();
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v46 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9177E9C();
  v44 = *(v15 - 8);
  v45 = v15;
  v16 = *(v44 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v43 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a6 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v23 = qword_1EDCD5B50;

  if (v23 != -1)
  {
    swift_once();
  }

  v39[1] = qword_1EDCD5B58;
  (*(v19 + 16))(v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a3, a6);
  v24 = (*(v19 + 80) + 40) & ~*(v19 + 80);
  v25 = (v20 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v40;
  v29 = v41;
  *(v27 + 2) = a6;
  *(v27 + 3) = v29;
  *(v27 + 4) = *(v28 + 104);
  (*(v19 + 32))(&v27[v24], v21, a6);
  v30 = v42;
  *&v27[v25] = v42;
  *&v27[v26] = a5;
  v31 = &v27[(v26 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v31 = sub_1D8D49C44;
  v31[1] = v22;
  aBlock[4] = sub_1D8D048F4;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_25;
  v32 = _Block_copy(aBlock);
  v33 = v30;
  v34 = a5;
  v35 = v43;
  sub_1D9177E4C();
  v49 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v36 = v46;
  v37 = v48;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v35, v36, v32);
  _Block_release(v32);
  (*(v47 + 8))(v36, v37);
  (*(v44 + 8))(v35, v45);
}

uint64_t sub_1D8D03924()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1D8D0395C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  v5 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t AssetBackgroundSession.init(descriptor:jobLibrary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = a5;
  v52 = a2;
  v56 = a6;
  v57 = a1;
  v54 = *(a3 - 8);
  v51 = *(v54 + 64);
  v10 = MEMORY[0x1EEE9AC00](a6);
  v53 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v55 = v12 + 16;
  v13(v10, a1);
  v48 = v13;
  v14 = AssetBackgroundSessionDescriptor.createJobCache(libraryPath:)(a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for DownloadTaskIdentifier();
  v19 = swift_getAssociatedConformanceWitness();
  v58 = v18;
  v59 = AssociatedTypeWitness;
  v60 = &protocol witness table for DownloadTaskIdentifier<A>;
  v61 = v19;
  v62 = MEMORY[0x1E69E6168];
  v20 = type metadata accessor for DiskAssetCache();
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v22 = swift_getAssociatedConformanceWitness();
  v58 = v20;
  v59 = v21;
  v23 = v50;
  v60 = v22;
  v61 = v50;
  v62 = AssociatedConformanceWitness;
  v63 = v17;
  v44 = type metadata accessor for AssetBackgroundDelegate();
  v58 = v14;
  v24 = v53;
  (v13)(v53, v57, a3);
  v25 = v54;
  v26 = (*(v54 + 80) + 40) & ~*(v54 + 80);
  v45 = v26 + v51;
  v47 = v26;
  v27 = swift_allocObject();
  *(v27 + 2) = a3;
  *(v27 + 3) = a4;
  *(v27 + 4) = v23;
  v46 = *(v25 + 32);
  v46(&v27[v26], v24, a3);
  v49 = v14;

  v28 = sub_1D8D0406C(&v58, sub_1D8EB0F90, v27);

  v51 = type metadata accessor for AssetBackgroundSession();
  *(v56 + *(v51 + 44)) = v28;
  v29 = objc_opt_self();
  v44 = v28;
  v30 = v57;
  AssetBackgroundSessionDescriptor.name.getter();
  v31 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v32 = [v29 backgroundSessionConfigurationWithIdentifier_];

  v33 = v53;
  v48(v53, v30, a3);
  v34 = (v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 2) = a3;
  *(v35 + 3) = a4;
  *(v35 + 4) = v23;
  v46(&v35[v47], v33, a3);
  *&v35[v34] = v32;
  *&v35[(v34 + 15) & 0xFFFFFFFFFFFFFFF8] = v44;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5838, &qword_1D9190AB0);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = sub_1D9177A5C();
  v40 = sub_1D9176C2C();
  (*(*(v40 - 8) + 8))(v52, v40);
  result = (*(v54 + 8))(v57, a3);
  v42 = v51;
  v43 = v56;
  *(v56 + *(v51 + 48)) = v39;
  *(v43 + *(v42 + 52)) = v49;
  return result;
}

uint64_t sub_1D8D03EF8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D8D03F78()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t AssetBackgroundSessionDescriptor.name.getter()
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1D917826C();
}

id sub_1D8D040B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = *v3;
  v9 = MEMORY[0x1E69E7D40];
  v10 = *MEMORY[0x1E69E7D40];
  v11 = *MEMORY[0x1E69E7D40] & *v3;
  v12 = &v3[*(v11 + 0x88)];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v3[*((*v9 & *v3) + 0x80)];
  *v13 = a2;
  *(v13 + 1) = a3;
  v14 = *((v10 & v8) + 0x50);
  (*(*(v14 - 8) + 16))(&v3[*((*v9 & *v3) + 0x90)], a1, v14);
  v15 = *((v10 & v8) + 0x78);

  v23 = v14;
  v24 = *(v11 + 88);
  v25 = *(v11 + 104);
  v26 = v15;
  v16 = type metadata accessor for AssetBackgroundDelegate.DownloadNotificationRecord();
  v17 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v18 = sub_1D917866C();
  v19 = sub_1D8D075C8(v18, v17, v16, MEMORY[0x1E69E6540]);

  *&v3[*((*v9 & *v3) + 0x98)] = v19;
  v20 = MEMORY[0x1E69E7CC0];
  *&v3[*((*v9 & *v3) + 0xA0)] = sub_1D8D043B0(MEMORY[0x1E69E7CC0]);
  *&v3[*((*v9 & *v3) + 0xA8)] = sub_1D8D04598(v20);
  *&v3[*((*v9 & *v3) + 0xB0)] = sub_1D8D04774(v20);
  *&v3[*((*v9 & *v3) + 0xB8)] = dispatch_group_create();
  v22.receiver = v3;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t sub_1D8D04374()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1D8D043B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4310, &unk_1D9188E70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4318, &unk_1D91A6C60);
    v8 = sub_1D91797AC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1D8D088B4(v10, v6, &qword_1ECAB4310, &unk_1D9188E70);
      result = sub_1D8F069D8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1D917653C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8D04598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4300, &qword_1D9188E60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4308, &qword_1D9188E68);
    v8 = sub_1D91797AC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1D8D088B4(v10, v6, &qword_1ECAB4300, &qword_1D9188E60);
      v12 = *v6;
      result = sub_1D8D490F4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_1D917653C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1D8D04774(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42F8, &unk_1D91A6C90);
  v3 = sub_1D91797AC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D8D490F4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D8D490F4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8D0487C(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(*(v2 + 16) - 8) + 80) + 40) & ~*(*(*(v2 + 16) - 8) + 80);
  v4 = (*(*(*(v2 + 16) - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D8D034CC(a1, a2, v2 + v3, *(v2 + v4), *(v2 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + 16), *(v2 + 24));
}

void sub_1D8D048F4()
{
  v1 = (*(*(*(v0 + 16) - 8) + 64) + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v2 = (v1 + 15) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v4 = *(v0 + v3 + 8);
  v6 = (*(*(v0 + 24) + 48))(*(v0 + v1), *(v0 + v2));
  v5(v6, 0);
}

uint64_t defaultPodcastTransitionRules.getter()
{
  if (qword_1EDCD21D8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D8D04B70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA8B0, &qword_1D91B8AB8);
  inited = swift_initStackObject();
  *(inited + 32) = 0x656C6261646461;
  *(inited + 16) = xmmword_1D918B210;
  *(inited + 72) = &type metadata for AddableRules;
  *(inited + 80) = &off_1F54844F0;
  *(inited + 88) = 0x676E69646461;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 128) = &type metadata for AddingRules;
  *(inited + 136) = &off_1F54844E0;
  *(inited + 144) = 0x6465646461;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 184) = &type metadata for AddedRules;
  *(inited + 192) = &off_1F54844D0;
  *(inited + 200) = 0x6E776F6E6B6E75;
  *(inited + 208) = 0xE700000000000000;
  *(inited + 240) = &type metadata for NonePodcastStateRule;
  *(inited + 248) = &protocol witness table for NonePodcastStateRule;
  v1 = sub_1D8D04CB0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4250, &qword_1D91B8AC0);
  result = swift_arrayDestroy();
  qword_1EDCD21E0 = v1;
  return result;
}

unint64_t sub_1D8D04CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4248, &unk_1D9188D90);
    v3 = sub_1D91797AC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D8D088B4(v4, &v13, &qword_1ECAB4250, &qword_1D91B8AC0);
      v5 = v13;
      v6 = v14;
      result = sub_1D8D33C70(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D8D6BCE0(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1D8D04DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1D9179ACC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1D8D04F8C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9177E0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[7] = a3;
  result = swift_unknownObjectWeakAssign();
  if (a2)
  {
    if (a1[5])
    {
      v17 = a1[2];
      aBlock[4] = sub_1D9110A40;
      aBlock[5] = a1;
      v22 = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8CF5F60;
      aBlock[3] = &block_descriptor_94;
      v21 = v11;
      v20 = _Block_copy(aBlock);

      sub_1D9177E4C();
      aBlock[7] = MEMORY[0x1E69E7CC0];
      v19 = sub_1D8CFD7F8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
      sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
      sub_1D91792CC();
      v18 = v20;
      MEMORY[0x1DA72A400](0, v15, v10, v20);
      _Block_release(v18);
      (*(v7 + 8))(v10, v6);
      (*(v12 + 8))(v15, v21);
    }
  }

  return result;
}

uint64_t sub_1D8D05294(uint64_t result)
{
  if (!*(result + 40))
  {
    v4 = *(result + 32);
    v1 = result;
    swift_allocObject();
    swift_weakInit();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9D0, &qword_1D91B9660);
    sub_1D8CF48EC(&qword_1EDCD0B78, &qword_1ECABA9D0, &qword_1D91B9660);
    v2 = sub_1D9177D9C();

    v3 = *(v1 + 40);
    *(v1 + 40) = v2;
  }

  return result;
}

uint64_t sub_1D8D053AC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t FetchedResultsListPublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v20 = a1;
  v6 = *(a2 + 24);
  v21 = *(a2 + 16);
  v5 = v21;
  v22 = MEMORY[0x1E69E6530];
  v23 = v6;
  v24 = MEMORY[0x1E69E6550];
  type metadata accessor for FetchedResultsPublisherImplementation.InternalPublisher();
  sub_1D91786FC();
  v17 = type metadata accessor for FRPOutput();
  swift_getWitnessTable();
  v7 = sub_1D917768C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = *v4;
  v13 = sub_1D8D12EBC();
  v21 = v13;
  v14 = swift_allocObject();
  v14[2] = v5;
  v14[3] = v6;
  v15 = v19;
  v14[4] = v18;
  v14[5] = v15;
  sub_1D9177B9C();

  sub_1D917767C();
  return (*(v8 + 8))(v11, v7);
}

void sub_1D8D0566C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = a1;
  v4[4] = a2;
  sub_1D8D056BC(sub_1D8D12F54, v4, a3);
}

void sub_1D8D056BC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_1D8D0578C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8D057C8(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 16);
    result = sub_1D91786FC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8D05854(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8D058B0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8D05908(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  result = type metadata accessor for ProducerInner.State();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8D059C8(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  active = type metadata accessor for ProducerInner.ActiveState();
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return active;
}

unint64_t sub_1D8D05A28(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = sub_1D91791BC();
    if (v6 <= 0x3F)
    {
      result = sub_1D8D05AD8();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1D8D05AD8()
{
  result = qword_1ECAAFB98;
  if (!qword_1ECAAFB98)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ECAAFB98);
  }

  return result;
}

uint64_t (*sub_1D8D05B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  v13 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  *(v14 + 5) = a5;
  (*(v9 + 32))(&v14[v13], v12, a2);
  return sub_1D8D05EE8;
}

uint64_t (*sub_1D8D05C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v11);
  v13 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a2;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  *(v14 + 5) = a5;
  (*(v9 + 32))(&v14[v13], v12, a2);
  return sub_1D8D05F54;
}

uint64_t sub_1D8D05D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  (*(*(a11 - 8) + 32))(a9, a1, a11);
  active = type metadata accessor for ProducerInner.ActiveState();
  v18 = active[11];
  v19 = sub_1D91791BC();
  result = (*(*(v19 - 8) + 32))(a9 + v18, a2, v19);
  v21 = (a9 + active[12]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + active[13]);
  *v22 = a5;
  v22[1] = a6;
  v23 = (a9 + active[14]);
  *v23 = a7;
  v23[1] = a8;
  *(a9 + active[15]) = a10;
  return result;
}

uint64_t sub_1D8D05EE8()
{
  v1 = *(v0 + 32);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80));
  return (*(v1 + 24))();
}

uint64_t sub_1D8D05FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  v26 = *MEMORY[0x1E69E7D40] & *v3;
  v32 = sub_1D9177E0C();
  v34 = *(v32 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D9177E9C();
  v31 = *(v33 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9176EAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v3 + qword_1ECAB8610);
  (*(v13 + 16))(v15, a1, v12);
  v16 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = *((v6 & v5) + 0x50);
  *(v18 + 24) = *(v26 + 88);
  *(v18 + 40) = *((v6 & v5) + 0x68);
  *(v18 + 48) = v3;
  (*(v13 + 32))(v18 + v16, v15, v12);
  v19 = (v18 + v17);
  v20 = v28;
  *v19 = v27;
  v19[1] = v20;
  aBlock[4] = sub_1D8D41408;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_51_0;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  sub_1D9177E4C();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBDA8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v23 = v30;
  v24 = v32;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v23, v21);
  _Block_release(v21);
  (*(v34 + 8))(v23, v24);
  (*(v31 + 8))(v11, v33);
}

uint64_t sub_1D8D06400()
{
  v1 = sub_1D9176EAC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);

  return swift_deallocObject();
}

uint64_t sub_1D8D064E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;

  sub_1D8D064DC(a1, a2, a3);
}

unint64_t sub_1D8D06550()
{
  result = qword_1ECAB2C58;
  if (!qword_1ECAB2C58)
  {
    sub_1D9176F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2C58);
  }

  return result;
}

uint64_t sub_1D8D06648()
{
  v0 = sub_1D917739C();
  __swift_allocate_value_buffer(v0, qword_1ECAB1080);
  __swift_project_value_buffer(v0, qword_1ECAB1080);
  return sub_1D917738C();
}

void *sub_1D8D066C8(uint64_t a1)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_1D9178FBC();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v62 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9940, &qword_1D91AD180);
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v58 = v55 - v8;
  v57 = sub_1D9178E0C();
  v9 = *(v57 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9178D8C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = sub_1D9177E9C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = MEMORY[0x1E69E7D40];
  *&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)] = MEMORY[0x1E69E7CD0];
  v56 = *((*v17 & *v1) + 0x68);
  v18 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v55[0] = "on.PurchaseController";
  v55[1] = v18;
  sub_1D9177E4C();
  v66 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD720(&qword_1EDCD7B50, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D91792CC();
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8090], v57);
  v19 = MEMORY[0x1E69E7D40];
  v20 = v59;
  *&v1[v56] = sub_1D9178E4C();
  v21 = &v2[*((*v19 & *v2) + 0x70)];
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  v22 = &v2[*((*v19 & *v2) + 0x78)];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v23 = *((*v19 & *v2) + 0x80);
  v24 = MEMORY[0x1E69E7CD0];
  v66 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  v25 = v58;
  sub_1D9177A9C();
  (*(v60 + 32))(&v2[v23], v25, v61);
  *&v2[*((*v19 & *v2) + 0x88)] = v24;
  v2[*((*v19 & *v2) + 0x90)] = 0;
  *&v2[*((*v19 & *v2) + 0x98)] = 0;
  v26 = *((*v19 & *v2) + 0xA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7C0, &unk_1D918C0E0);
  v27 = swift_allocObject();
  *(v27 + 20) = 0;
  *(v27 + 16) = 0;
  *&v2[v26] = v27;
  *&v2[*((*v19 & *v2) + 0xB8)] = 0;
  *&v2[*((*v19 & *v2) + 0xD0)] = 0;
  swift_beginAccess();
  sub_1D8D07104(v20, v21);
  swift_endAccess();
  *&v2[*((*v19 & *v2) + 0xC8)] = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v28 = [objc_opt_self() sharedInstance];
  v29 = [v28 privateQueueContext];

  type metadata accessor for InterestStore();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  if (qword_1ECAB1F70 != -1)
  {
    swift_once();
  }

  v31 = qword_1ECAB1F78;
  type metadata accessor for InterestRepository();
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = v31;
  v33 = objc_allocWithZone(MTSubscriptionChangeHandler);
  v34 = v31;
  *&v2[*((*v19 & *v2) + 0xA0)] = [v33 init];
  v35 = [objc_opt_self() sharedInstance];
  v36 = [objc_opt_self() ams_sharedAccountStore];
  v37 = objc_allocWithZone(type metadata accessor for MusicSubscriptionInfoSyncUtil());
  *&v2[*((*v19 & *v2) + 0xB0)] = sub_1D8D34518(v35, v36, v37);
  *&v2[*((*v19 & *v2) + 0xC0)] = v32;

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9A70, &unk_1D91AD3F0);
  v65.receiver = v2;
  v65.super_class = v38;
  v39 = objc_msgSendSuper2(&v65, sel_init);
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 defaultCenter];
  v43 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v42 addObserver:v41 selector:sel_didFinishUpdatingFeeds name:v43 object:0];

  v44 = *(v41 + *((*v19 & *v41) + 0x68));
  v45 = objc_allocWithZone(MTSubscriptionEntitlementsObserver);
  v46 = v41;
  v47 = [v45 initWithDelegate:v46 onQueue:v44];
  v48 = *((*v19 & *v46) + 0xB8);
  v49 = *(v46 + v48);
  *(v46 + v48) = v47;

  v50 = [v40 defaultCenter];
  v51 = v62;
  sub_1D9178FCC();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1D8CFD720(&qword_1EDCD5B10, MEMORY[0x1E6969F20]);
  v52 = v64;
  sub_1D9177D9C();

  (*(v63 + 8))(v51, v52);
  v53 = *((*v19 & *v46) + 0x60);
  swift_beginAccess();
  sub_1D917783C();
  swift_endAccess();

  sub_1D8D08A50(v20, &qword_1ECAB9A78, &qword_1D91AD680);
  return v46;
}

uint64_t sub_1D8D070CC()
{
  MEMORY[0x1DA72CC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D8D07104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9A78, &qword_1D91AD680);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *sub_1D8D071E8(uint64_t a1)
{
  v10[0] = sub_1D8D073F0(a1, *(*v1 + 80), *(*v1 + 88), *(*v1 + 96), *(*v1 + 104), *(*v1 + 112));
  v10[1] = v2;
  v10[2] = v3;
  v4 = type metadata accessor for InMemoryAssetCache.SizedStore();
  v5 = sub_1D8D07908(v10, v4);

  v1[2] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4C38, qword_1D918C960);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  v7 = (v6 + 24);
  *(v6 + 16) = 0;
  v8 = (v6 + 16);
  v1[3] = v6;

  os_unfair_lock_lock(v7);
  sub_1D8D07A34(v8);
  os_unfair_lock_unlock(v7);

  return v1;
}

uint64_t sub_1D8D0736C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5();
  (*(*(a3 - 8) + 8))(a2, a3);
  return v7;
}

uint64_t sub_1D8D073F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for InMemoryAssetCache.Record();
  swift_getTupleTypeMetadata2();
  v10 = sub_1D917866C();
  sub_1D8D075C8(v10, AssociatedTypeWitness, v9, a6);

  return a1;
}

uint64_t sub_1D8D074EC(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_1D9176E3C();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D8D075C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1D91786AC())
  {
    sub_1D91797BC();
    v13 = sub_1D91797AC();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1D91786AC();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1D917868C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1D91794BC();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1D8E6AEFC(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_1D8D078CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8D0790C()
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1D917956C();
  return sub_1D917955C();
}

uint64_t sub_1D8D07988@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D8D07A54(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a3;
  v9 = *a1;

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v8[10];
  v11[3] = v8[11];
  v11[4] = a4;
  v11[5] = v8[12];
  v11[6] = v8[13];
  v11[7] = a5;
  v11[8] = v8[14];
  v11[9] = v10;

  v12 = sub_1D9177D9C();

  *a1 = v12;
  return result;
}

uint64_t sub_1D8D07BB4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D8D07BEC()
{
  v1 = *(v0 + 72);

  return swift_deallocObject();
}

uint64_t Publisher.makeOptional.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1D91791BC();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &WitnessTable - v6;
  v8 = sub_1D917768C();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &WitnessTable - v10;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1D917760C();
  v21 = *(v12 - 8);
  v13 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &WitnessTable - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = sub_1D8F35580;
  v17[5] = v16;
  sub_1D9177B9C();

  (*(*(AssociatedTypeWitness - 8) + 56))(v7, 1, 1);
  sub_1D9177B4C();
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v8);
  swift_getWitnessTable();
  v18 = sub_1D9177B1C();
  (*(v21 + 8))(v15, v12);
  return v18;
}

uint64_t sub_1D8D07FC4()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t Publisher.receiveAndSubscribe<A>(on:options:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v11[1] = a5;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v5 = sub_1D91775DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  sub_1D9177D3C();
  swift_getWitnessTable();
  sub_1D9177CEC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation15EpisodeListTypeO(uint64_t a1)
{
  if ((*(a1 + 64) & 0xFu) <= 9)
  {
    return *(a1 + 64) & 0xF;
  }

  else
  {
    return (*a1 + 10);
  }
}

uint64_t sub_1D8D081D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8D0821C(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1D8D08238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 85) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 85) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

double PlaybackIntent.Context.init(origin:seed:baseListSettings:)@<D0>(unsigned __int8 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a3 + 16);
  *&v28[7] = *a3;
  *&v28[23] = v7;
  v8 = *(a3 + 48);
  *&v28[39] = *(a3 + 32);
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 32);
  v12 = *(a3 + 64);
  v13 = *(a3 + 80) | (*(a3 + 84) << 32);
  *&v28[55] = v8;
  if (v13 != 2 && v12 == 6)
  {
    v20 = v10;
    v21 = v9;
    v15 = *(a3 + 16);
    v23[0] = *a3;
    v23[1] = v15;
    v16 = *(a3 + 48);
    v23[2] = *(a3 + 32);
    v23[3] = v16;
    v24 = 6;
    *v25 = *(a3 + 65);
    *&v25[7] = *(a3 + 72);
    v26 = v13;
    v27 = BYTE4(v13);
    sub_1D8D0841C(v23, v22);
    if (v6 == 3)
    {
      LOBYTE(v6) = 0;
    }

    v10 = v20;
    v9 = v21;
  }

  *(a4 + 8) = v9;
  *(a4 + 24) = v10;
  v17 = *v28;
  *(a4 + 57) = *&v28[16];
  result = *&v28[32];
  v19 = *&v28[48];
  *(a4 + 73) = *&v28[32];
  *a4 = v6;
  *(a4 + 40) = v11;
  *(a4 + 89) = v19;
  *(a4 + 104) = *&v28[63];
  *(a4 + 41) = v17;
  *(a4 + 112) = v12;
  *(a4 + 120) = *(a3 + 72);
  *(a4 + 113) = *(a3 + 65);
  *(a4 + 132) = BYTE4(v13);
  *(a4 + 128) = v13;
  return result;
}

uint64_t sub_1D8D08468(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[12];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[35]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[22];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1D8D08594(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation14PlaybackIntentV6OptionO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D8D085C8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D9179DBC();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 8;
    }

    else if (v1 > 1)
    {
      if (v1 ^ 2 | v2)
      {
        v4 = 6;
      }

      else
      {
        v4 = 4;
      }
    }

    else if (v1 | v2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    if (v3)
    {
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      return sub_1D9179E1C();
    }

    v4 = 3;
  }

  MEMORY[0x1DA72B390](v4);
  return sub_1D9179E1C();
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t PlaybackIntent.init(id:context:initialItem:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v30 = sub_1D9176EAC();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v30 - v15;
  v17 = *(a1 + 32);
  sub_1D8D088B4(a3, &v30 - v15, &qword_1ECAB9F70, qword_1D91B1680);
  v18 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v18;
  *(a5 + 32) = v17;
  v19 = type metadata accessor for PlaybackIntent(0);
  v20 = a5 + v19[6];
  v21 = *(a2 + 112);
  *(v20 + 96) = *(a2 + 96);
  *(v20 + 112) = v21;
  *(v20 + 125) = *(a2 + 125);
  v22 = *(a2 + 48);
  *(v20 + 32) = *(a2 + 32);
  *(v20 + 48) = v22;
  v23 = *(a2 + 80);
  *(v20 + 64) = *(a2 + 64);
  *(v20 + 80) = v23;
  v24 = *(a2 + 16);
  *v20 = *a2;
  *(v20 + 16) = v24;
  sub_1D8D088B4(v16, a5 + v19[5], &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D9176E9C();
  v25 = sub_1D9176E5C();
  v27 = v26;
  sub_1D8D08A50(a3, &qword_1ECAB9F70, qword_1D91B1680);
  (*(v9 + 8))(v12, v30);
  result = sub_1D8D08A50(v16, &qword_1ECAB9F70, qword_1D91B1680);
  v29 = (a5 + v19[8]);
  *v29 = v25;
  v29[1] = v27;
  *(a5 + v19[7]) = v31;
  *(a5 + v19[9]) = 0;
  return result;
}

uint64_t sub_1D8D088B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D8D08930(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[12];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[22];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[35]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1D8D08A50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL PlaybackIntent.canValidate.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = *(v0 + 32);
  if (v5 > 4)
  {
    if (*(v0 + 32) <= 6u)
    {
      return 0;
    }

    if (v5 == 7)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (*(v0 + 32) > 2u)
  {
    if (v5 != 3)
    {
      return *(v0 + 24) != 0;
    }

    goto LABEL_10;
  }

  if (v5 < 2)
  {
LABEL_10:
    v7 = type metadata accessor for PlaybackIntent(0);
    sub_1D8D088B4(v0 + *(v7 + 20), v4, &qword_1ECAB9F70, qword_1D91B1680);
    v8 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    v6 = (*(*(v8 - 8) + 48))(v4, 1, v8) != 1;
    sub_1D8D08A50(v4, &qword_1ECAB9F70, qword_1D91B1680);
    return v6;
  }

  return 1;
}

uint64_t sub_1D8D08C08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PlaybackIntent.encodeData()()
{
  v0 = sub_1D91769EC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1D91769DC();
  type metadata accessor for PlaybackIntent(0);
  sub_1D8D08C08(&qword_1ECAB24B8, type metadata accessor for PlaybackIntent);
  v3 = sub_1D91769CC();

  return v3;
}

uint64_t PlaybackIntent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA158, &qword_1D91B1FE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8D0926C();
  sub_1D9179F1C();
  v10 = *(v2 + 8);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = *(v2 + 32);
  *&v47 = *v2;
  *(&v47 + 1) = v10;
  *&v48 = v11;
  *(&v48 + 1) = v12;
  LOBYTE(v49) = v13;
  LOBYTE(v39) = 0;
  sub_1D8D092C0(v47, v10, v11, v12, v13);
  sub_1D8D09354();
  v14 = v4;
  v15 = v56;
  sub_1D91799FC();
  if (v15)
  {
    sub_1D8CFEACC(v47, *(&v47 + 1), v48, *(&v48 + 1), v49);
  }

  else
  {
    v56 = v5;
    sub_1D8CFEACC(v47, *(&v47 + 1), v48, *(&v48 + 1), v49);
    v33 = type metadata accessor for PlaybackIntent(0);
    v17 = v33[5];
    v55 = 1;
    type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
    sub_1D8D08C08(&qword_1ECAB2C10, type metadata accessor for PodcastsMediaLibrary.MediaItem);
    sub_1D917999C();
    v18 = v33;
    v19 = (v2 + v33[6]);
    v20 = v19[6];
    v21 = v19[4];
    v52 = v19[5];
    v53 = v20;
    v22 = v19[6];
    *v54 = v19[7];
    v23 = v19[1];
    v24 = v19[3];
    v49 = v19[2];
    v50 = v24;
    v25 = v19[3];
    v51 = v19[4];
    v26 = v19[1];
    v47 = *v19;
    v48 = v26;
    v44 = v52;
    v45 = v22;
    v46[0] = v19[7];
    v41 = v49;
    v42 = v25;
    v43 = v21;
    *&v54[13] = *(v19 + 125);
    *(v46 + 13) = *(v19 + 125);
    v39 = v47;
    v40 = v23;
    v38 = 2;
    sub_1D8CFEB60(&v47, v36);
    sub_1D8D0AAA0();
    sub_1D91799FC();
    v36[6] = v45;
    *v37 = v46[0];
    *&v37[13] = *(v46 + 13);
    v36[2] = v41;
    v36[3] = v42;
    v36[4] = v43;
    v36[5] = v44;
    v36[0] = v39;
    v36[1] = v40;
    sub_1D8D0DB70(v36);
    v35 = *(v2 + v18[7]);
    v34 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA160, &qword_1D91B1FE8);
    sub_1D8D0DBA0(&qword_1ECAAFE70, sub_1D8D00928);
    sub_1D91799FC();
    v27 = v33;
    v28 = (v2 + v33[8]);
    v29 = *v28;
    v30 = v28[1];
    LOBYTE(v35) = 4;
    sub_1D91799BC();
    v5 = v56;
    v31 = *(v2 + v27[9]);
    LOBYTE(v35) = 5;
    sub_1D91799CC();
  }

  return (*(v5 + 8))(v8, v14);
}

unint64_t sub_1D8D0917C()
{
  result = qword_1ECAB2620;
  if (!qword_1ECAB2620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2620);
  }

  return result;
}

unint64_t sub_1D8D091D4()
{
  result = qword_1ECAB2628;
  if (!qword_1ECAB2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2628);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1D8D0926C()
{
  result = qword_1ECAB2630;
  if (!qword_1ECAB2630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2630);
  }

  return result;
}

uint64_t sub_1D8D092C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 7u)
  {
    if (((1 << a5) & 0xE6) != 0)
    {
    }

    if (a5 == 3)
    {
    }

    if (a5 == 4)
    {
    }
  }

  return result;
}