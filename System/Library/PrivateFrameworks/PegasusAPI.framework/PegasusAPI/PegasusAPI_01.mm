uint64_t sub_1B8CE7644()
{
  OUTLINED_FUNCTION_102();
  v0 = Snippetpb_MoviesSnippet.isShowtimes.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE7690()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.wikiID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE76BC()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.imdbID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE76E8()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.voiceOnlyActors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE7714()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.localizedGenres.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE7740()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.characterNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE776C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.siribaseID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE7798()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.writers.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE77C4()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.producers.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE77F0()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.trailersV2.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE781C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.castAndCrew.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE7848()
{
  OUTLINED_FUNCTION_102();
  v0 = Snippetpb_MoviesSnippet.boost.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE7894()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.engTokens.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE78C0()
{
  OUTLINED_FUNCTION_102();
  v0 = Snippetpb_MoviesSnippet.isAnnTier.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE790C()
{
  OUTLINED_FUNCTION_102();
  v0 = Snippetpb_MoviesSnippet.isIm.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE7958()
{
  OUTLINED_FUNCTION_102();
  v0 = Snippetpb_MoviesSnippet.isStereo.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE79A4()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_MoviesSnippet.kgInternalID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE79D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B8CE7A7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CE7B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 52);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD738, &qword_1B9663A50);
      v10 = *(a3 + 56);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1B8CE7C4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 52);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD738, &qword_1B9663A50);
      v10 = *(a4 + 56);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8CE7DBC()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE7DE8()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.canonicalID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE7E14()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE7E40()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.description_p.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE7EE4()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.thumbnail.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE7F10()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.genres.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE7F3C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.availabilities.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE7F68()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.actors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE7F94()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.premieredNetwork.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE7FC0()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.premiereDate.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE7FEC()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.finaleDate.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE8090()
{
  OUTLINED_FUNCTION_102();
  v0 = Snippetpb_TvShowSnippet.appleOriginal.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE80DC()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.runtimeInMinutes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE812C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.children.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE81D0()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.seasonNumber.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE8220()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.episodeNumber.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE8278()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.coverArt.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE82F4()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.wikiID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE8320()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.imdbID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE834C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.rottenTomatoesURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE8378()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.parentSeasonName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE83A4()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.localizedGenres.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE83D0()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.characterNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE83FC()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.siribaseID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE8428()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.directors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE8454()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.trailersV2.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE8480()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.castAndCrew.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE84AC()
{
  OUTLINED_FUNCTION_102();
  v0 = Snippetpb_TvShowSnippet.boost.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE84F8()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.engTokens.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE8524()
{
  OUTLINED_FUNCTION_102();
  v0 = Snippetpb_TvShowSnippet.isAnnTier.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE8570()
{
  OUTLINED_FUNCTION_102();
  v0 = Snippetpb_TvShowSnippet.isIm.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE85BC()
{
  OUTLINED_FUNCTION_102();
  v0 = Snippetpb_TvShowSnippet.isStereo.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CE8608()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_TvShowSnippet.kgInternalID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE8634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1B8CE86E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CE879C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8CE8824(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8CE88F8()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.imageURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE8924()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.title.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE8950()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.webPageURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE897C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.publishTimestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE89CC()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.fetchTimestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE8A1C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.imageWidth.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE8A6C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.imageHeight.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE8ABC()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.relatedImages.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE8AE8()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.isDetail.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CE8B3C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.thumbnailTableName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE8C48()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.thirdPartyThumbnailURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE8C7C()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.docID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE8CA8()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.thumbnailID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE8CD4()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.isE2I.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CE8D28()
{
  OUTLINED_FUNCTION_102();
  result = Snippetpb_WebImagesSnippet.disableRelatedImagesSearch.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CE8E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_1B8CE8EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CE8FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 24));
  }

  v7 = sub_1B964C2B0();
  v8 = a1 + *(a3 + 24);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1B8CE901C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8CE90B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 9);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1B964C2B0();
    v11 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_1B8CE913C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 9) = a2 + 1;
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8CE91D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8CE9258(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8CE92EC@<X0>(uint64_t *a1@<X8>)
{
  result = Tvpb_TvType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8CE93FC()
{
  OUTLINED_FUNCTION_102();
  result = Tvpb_TvAvailability.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE9428()
{
  OUTLINED_FUNCTION_102();
  result = Tvpb_TvAvailability.startDateSeconds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE9478()
{
  OUTLINED_FUNCTION_102();
  result = Tvpb_TvAvailability.endDateSeconds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CE9520()
{
  OUTLINED_FUNCTION_102();
  result = Tvpb_TvAvailability.webPunchoutURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE954C()
{
  OUTLINED_FUNCTION_102();
  result = Tvpb_TvAvailability.webPlayURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE9578()
{
  OUTLINED_FUNCTION_102();
  result = Tvpb_TvAvailability.appPunchoutURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE95A4()
{
  OUTLINED_FUNCTION_102();
  result = Tvpb_TvAvailability.appPlayURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE9628()
{
  OUTLINED_FUNCTION_102();
  result = Tvpb_TvAvailability.searchBrandID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CE97B4()
{
  OUTLINED_FUNCTION_102();
  result = Tvpb_TvAvailability.isMccormickProvider.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CE9860()
{
  OUTLINED_FUNCTION_102();
  result = Tvpb_TvAvailability.isStereoContent.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CE98B4()
{
  OUTLINED_FUNCTION_102();
  result = Tvpb_TvAvailability.isImmersiveContent.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CE9930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B8CE99D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v5, v4, v4, result);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1B8CE9A88()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 28));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CE9AE8()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 28));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CE9B50()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9260, &unk_1B9664DA0);
    v6 = *(v1 + 32);
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CE9BFC()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v4)
    {
      v7 = *(v3 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9260, &unk_1B9664DA0);
      v7 = *(v3 + 32);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CE9CB4()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 28);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8CE9D04()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 28);
  v4 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_1B8CE9E14@<X0>(uint64_t *a1@<X8>)
{
  result = Useragentpb_UserAgent.productVersion.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8CE9E44@<X0>(uint64_t *a1@<X8>)
{
  result = Useragentpb_UserAgent.buildOsVersion.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8CE9FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1B8CEA074(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_28_1();
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CEA114()
{
  OUTLINED_FUNCTION_691();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  v5 = v1;
  sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_699(*(v5 + 20));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8CEA188(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 20));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8CEA200()
{
  OUTLINED_FUNCTION_691();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v7);
  if (*(v8 + 84) == v6)
  {
    v9 = *(v5 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE138, &qword_1B9667090);
    v9 = *(v5 + 24);
  }

  v10 = OUTLINED_FUNCTION_699(v9);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1B8CEA2C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v4 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v5;
    v8 = v4;
    v9 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v9);
    if (*(v10 + 84) == v8)
    {
      v11 = *(v7 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE138, &qword_1B9667090);
      v11 = *(v7 + 24);
    }

    v12 = OUTLINED_FUNCTION_699(v11);

    __swift_storeEnumTagSinglePayload(v12, v13, a2, v14);
  }
}

uint64_t sub_1B8CEA388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28_1();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91B8, &qword_1B964D9A0);
    v12 = OUTLINED_FUNCTION_128_1(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A8, &unk_1B964D990);
      v14 = *(a3 + 24);
    }

    v10 = v3 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1B8CEA474(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_28_1();
  v8 = sub_1B964C2B0();
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91B8, &qword_1B964D9A0);
    v14 = OUTLINED_FUNCTION_128_1(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91A8, &unk_1B964D990);
      v16 = *(a4 + 24);
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1B8CEAA44()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 20);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE470, &qword_1B9667730);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_266();
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE478, &qword_1B9667738);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == v0)
      {
        OUTLINED_FUNCTION_267_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
        v7 = *(v2 + 32);
      }
    }
  }

  v12 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v12, v13, v14);
}

void sub_1B8CEAB84()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v4)
    {
      v7 = *(v3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE470, &qword_1B9667730);
      OUTLINED_FUNCTION_128_1(v8);
      if (*(v9 + 84) == v4)
      {
        OUTLINED_FUNCTION_258_0();
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE478, &qword_1B9667738);
        OUTLINED_FUNCTION_128_1(v10);
        if (*(v11 + 84) == v4)
        {
          OUTLINED_FUNCTION_259_0();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
          v7 = *(v3 + 32);
        }
      }
    }

    v12 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_1B8CEAD00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v3)
  {
    v7 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9200, &qword_1B9667750);
    OUTLINED_FUNCTION_266();
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

uint64_t sub_1B8CEAD98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = *(a4 + 20);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9200, &qword_1B9667750);
    v12 = *(a4 + 24);
  }

  return __swift_storeEnumTagSinglePayload(a1 + v12, a2, a2, v11);
}

uint64_t sub_1B8CEAE44()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_267_0();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = *(v2 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE488, &unk_1B9667758);
      v7 = *(v2 + 36);
    }
  }

  v10 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1B8CEAF3C()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = *(v5 + 32);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE488, &unk_1B9667758);
        v9 = *(v5 + 36);
      }
    }

    v12 = OUTLINED_FUNCTION_61_0(v9);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_1B8CEB040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v3)
    {
      OUTLINED_FUNCTION_267_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9200, &qword_1B9667750);
      v7 = *(a3 + 32);
    }
  }

  v10 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

uint64_t sub_1B8CEB120(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v6 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == a3)
  {
    OUTLINED_FUNCTION_258_0();
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9210, &qword_1B9667740);
    OUTLINED_FUNCTION_128_1(v9);
    if (*(v10 + 84) == a3)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9200, &qword_1B9667750);
      v8 = *(a4 + 32);
    }
  }

  v11 = OUTLINED_FUNCTION_61_0(v8);

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_1B8CEB23C()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 32);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8CEB28C()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 32);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_260_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B8CEB300@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.TemplateType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8CEB438()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEB464()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.clusterID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEB498()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.question.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEB52C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.context.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEB558()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.language.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEB584()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.platform.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEB5B0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.platformVersion.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEB600()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.actions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEB62C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.sources.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEB658()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.tipID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEB74C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.attributions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEB778()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.disclaimer.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEB7A4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.assetBaseURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEB7D0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.deviceFamilies.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEB7FC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.tipsCollectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEB890()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.siriSuggestions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEB8BC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.contextHints.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEB8E8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.contextTags.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEB914()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.supportFlowID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEB940()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.isLlmGeneratedAnswer.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CEB994()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.serializedResult.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEBE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1B8CEBEE8()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v4 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_231();

    return __swift_storeEnumTagSinglePayload(v7, v0, v0, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1B8CEBF80()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 20);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8CEBFD0()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 20);
  v4 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_1B8CEC024()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE978, &qword_1B96693C0);
    OUTLINED_FUNCTION_267_0();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CEC0CC()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v3 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE978, &qword_1B96693C0);
      OUTLINED_FUNCTION_259_0();
    }

    v6 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B8CEC17C()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_267_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE978, &qword_1B96693C0);
    v6 = *(v1 + 32);
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CEC224()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v3 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE978, &qword_1B96693C0);
      v5 = *(v0 + 32);
    }

    v6 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B8CEC30C()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 40));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CEC370()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 40));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CEC3D4()
{
  OUTLINED_FUNCTION_19_1();
  if (v0)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_194_1();
  v3 = OUTLINED_FUNCTION_699(v2);

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CEC430()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_196_2();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CEC494()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F0, &qword_1B96693D0);
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v3)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_267_0();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CEC544()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91F0, &qword_1B96693D0);
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_259_0();
    }

    v5 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8CEC5F0()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 32));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CEC650()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 32));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CEC6B8()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 44));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CEC718()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 44));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CEC778()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 36));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CEC7D8()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 36));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CEC864()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 24));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE998, &unk_1B96693F0);
    OUTLINED_FUNCTION_267_0();
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CEC910()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABE998, &unk_1B96693F0);
      OUTLINED_FUNCTION_259_0();
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CEC9E4()
{
  OUTLINED_FUNCTION_147_1();
  sub_1B8F2116C();
  return sub_1B964C420();
}

uint64_t sub_1B8CECD9C()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CECE00()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8CED148()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CED1AC()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CED238()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_266();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CED298()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CED2F8()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_266();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CED358()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CED3E0()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 24));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
    v7 = *(v2 + 28);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CED48C()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
      v9 = *(v5 + 28);
    }

    v10 = OUTLINED_FUNCTION_61_0(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1B8CED54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
    v10 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1B8CED5EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v8);
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_231();
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v11);
}

uint64_t sub_1B8CED6B4@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.DeviceType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8CED888()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CED8B4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.id.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CED8E0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.canonicalID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CED90C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.externalIds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CED938()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.subdomain.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CED964()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.resultTags.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CED990()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.queryTags.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CED9BC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.preMergeQueryTags.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CED9E8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.prefix.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEDA14()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.query.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEDA40()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.abversion.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEDA8C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.searchID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEDAB8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.userGuid.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEDAE4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.inDomainOrder.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEDB30()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.rankerOrder.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEDB7C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.postMergeOrder.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEDBC8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.serpGrouping.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEDC14()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.sectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEDC40()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.cardFbrs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEDC6C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.cardFbrindexes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEDD10()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.resultAge.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEDD60()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.siriUtterance.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEDD8C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.siriRelatedAppBundelID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEDDB8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.isLocalCompletion.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEDE04()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.isLocalAndServerCompletionDifferent.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CEDE58()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.cardIds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEDE84()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.entityType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEDEB0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.displayInformation.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEDEDC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.uncorrectedQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEDF60()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.abversionFailure.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEDFAC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.qid.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEDFD8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.suppressedSuggestion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE004()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.selectedExperience.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE1B0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.serverReleaseVersion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE1DC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.summary.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE254()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackResult.contentAge.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE280()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.userGuid.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE2AC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.endpointID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE2D8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.prefix.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE304()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.query.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE330()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.clientCacheQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE35C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.bingQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE388()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.ts.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE3D8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.geo.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE404()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.geoV2.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE430()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.geoID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE47C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.client.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE500()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE52C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.storefront.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE558()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.latLng.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE584()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.tags.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE5B0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.dopplerTags.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE5DC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.preMergeTags.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE608()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.abversion.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE654()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.searchID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE680()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.releaseTag.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE6AC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.canonicalID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE770()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.clientCompletions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE79C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.otherFbqs.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE7C8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.serpGrouping.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE814()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.queryDecile.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE860()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.geohashes.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEE88C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.resultIds.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE8B8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.isRewrittenQuery.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CEE90C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.ipshard.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE958()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.ipshardTruncated.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE9A4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.ipshardFull.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEE9F0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.shardAbc2.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEEA3C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.shardAbch1.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEEA88()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.shardAbch2.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEEAD4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.uncorrectedQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEEB00()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.partnerTreatmentID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEEBA4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.abversionFailure.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEEBF0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.trialTreatmentFailure.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1B8CEEC44()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.cftreatmentID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEEC70()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.entityType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEECE8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.cfdebug.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEED14()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.pegasusVersion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEED40()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.otherCrAtKscores.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CEEE04()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_FeedbackQuery.edgeName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEEEC8()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 24));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF2C0, &qword_1B966D630);
    v7 = *(v2 + 32);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CEEF78()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABF2C0, &qword_1B966D630);
      v9 = *(v5 + 32);
    }

    v10 = OUTLINED_FUNCTION_699(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

uint64_t sub_1B8CEF038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_1B8CEF08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B8CEF104()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_EnumOptions.Apple_Parsec_Feedback_V2_objcEnumType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEF130()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_EnumValueOptions.Apple_Parsec_Feedback_V2_stringValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEF15C()
{
  OUTLINED_FUNCTION_102();
  v0 = Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_includeEmpty.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CEF1A8()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_jsonKey.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEF1D4()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEF200()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FieldOptions.Apple_Parsec_Feedback_V2_objcAttr.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEF22C()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFacadePrefix.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEF258()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcFramework.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEF284()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcPackage.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEF2B0()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcEnumNaming.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEF2DC()
{
  OUTLINED_FUNCTION_102();
  v0 = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcUseArc.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CEF328()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_FileOptions.Apple_Parsec_Feedback_V2_objcClassPrefix.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEF354()
{
  OUTLINED_FUNCTION_102();
  v0 = Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_customFacadeInitializer.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CEF3A0()
{
  OUTLINED_FUNCTION_102();
  v0 = Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcFacadeTranslate.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CEF3EC()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgSuperclass.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEF418()
{
  OUTLINED_FUNCTION_102();
  result = Google_Protobuf_MessageOptions.Apple_Parsec_Feedback_V2_objcMsgType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CEF448@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Feedback_V2_FeedbackDeletionReason.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8CEFD9C()
{
  OUTLINED_FUNCTION_147_1();
  sub_1B9013B20();
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C420();
}

uint64_t sub_1B8CEFFD4()
{
  OUTLINED_FUNCTION_147_1();
  sub_1B9013688();
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C420();
}

uint64_t sub_1B8CF0394()
{
  OUTLINED_FUNCTION_147_1();
  sub_1B90140B4();
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C420();
}

uint64_t sub_1B8CF0628()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.avgRtt.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0674()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.cellRxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF06C0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.cellTxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF070C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.connectAttempts.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0758()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.connectSuccesses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF07A4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.minRtt.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF07F0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.rxBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF083C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.rxDuplicateBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0888()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.rxOutOfOrderBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF08D4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.rxPackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0920()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.txBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF096C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.txPackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF09B8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitPackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0A04()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.varRtt.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0A50()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.wifiRxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0A9C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.wifiTxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0AE8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.wiredRxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0B34()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.wiredTxpackets.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0B80()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.statsType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF0BAC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_TCPInfo.txRetransmitBytes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0BF8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.interfaceIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF0C24()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.peerAddress.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF0C50()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_NetworkTimingData.connectionRace.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF0C9C()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_NetworkTimingData.connectionReused.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF0DB8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.connectionUuid.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF0DE4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.networkProtocolName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF0E10()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_NetworkTimingData.quicwhitelistedDomain.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF0E5C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.redirectCount.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0EA8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.redirectCountW3C.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0EF4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.requestHeaderSize.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0F40()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseBodyBytesDecoded.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0F8C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseBodyBytesReceived.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF0FD8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseHeaderSize.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF1024()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_NetworkTimingData.tfosuccess.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF10BC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.connectStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF1108()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.connectEnd.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF1154()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.domainLookupStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF11A0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.domainLookupEnd.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF11EC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.fetchStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF1238()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.redirectStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF1284()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.redirectEnd.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF12D0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.requestStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF131C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.requestEnd.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF1368()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF13B4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.responseEnd.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF1400()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_NetworkTimingData.secureConnectStart.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF144C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_ResultSectionForFeedback.bundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF15B0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_PunchoutForFeedback.bundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF1634()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF1858()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF18D0()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isStaticCorrection.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF191C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.queryID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF1968()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.intendedQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF1994()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.correctedQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF19C0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.completedQuery.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF19EC()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isLocalApplicationResult.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF1A38()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.publiclyIndexable.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF1A84()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.fbr.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF1AB0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.userInput.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF1ADC()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isFuzzyMatch.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF1B28()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.doNotFold.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF1B74()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.blockID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF1BC0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.hashedIdentifier.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF1C78()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.resultBundleID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF1D68()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.sectionBundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF1E58()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.applicationBundleIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF1EDC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.entityData.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF1F08()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.shouldUseCompactDisplay.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF1F54()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.noGoTakeover.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF1FA0()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.preferTopPlatter.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF1FEC()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.wasCompact.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF2038()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.didTakeoverGo.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF2084()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.usesCompactDisplay.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF20D0()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isInstantAnswer.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF211C()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.shouldAutoNavigate.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF22A0()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.containsPersonalResult.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF22EC()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.didRerankPersonalResult.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF2550()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isVideoAssetFromPhotos.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF259C()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.isMailInstantAnswerUpdated.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF25E8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.indexOfSectionWhenRanked.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF2634()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SearchResultForFeedback.indexOfResultInSectionWhenRanked.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF26F8()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_SearchResultForFeedback.hasAppTopHitShortcut_p.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF28C8()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.wasReorderedByRecency.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF2914()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.numEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF2960()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.numDaysEngagedLast30Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF29AC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast7Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF29F8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast14Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF2A44()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast21Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF2A90()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.averageEngagementAgeLast30Days.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF2ADC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.daysSinceReceipt.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF2BC0()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isFlagged.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF2C0C()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isRepliedTo.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF2C58()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSemanticMatch.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF2CA4()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.isSyntacticMatch.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF2D88()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF2DD4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF2E20()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF2E6C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF2EB8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF2F04()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthors.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF2F50()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF2F9C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF2FE8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3034()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3080()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF30CC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAuthorEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3118()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3164()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF31B0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF31FC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3248()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3294()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInSubject.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF32E0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF332C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3378()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF33C4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3410()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF345C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInTextContent.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF34A8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF34F4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3540()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF358C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF35D8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3624()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipients.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3670()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF36BC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3708()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3754()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF37A0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF37EC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInRecipientEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3838()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3884()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF38D0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF391C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3968()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF39B4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInEmailAddresses.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3A00()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3A4C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3A98()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3AE4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3B30()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3B7C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentTypes.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3BC8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3C14()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3C60()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3CAC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countUnigramPrefixMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3CF8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countBigramPrefixMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3D44()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback.countNgramPrefixMatchInAttachmentNames.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF3F88()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandDetail.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF3FB4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.uniqueButtonID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF4000()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF4094()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF40E0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.resultSectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF41BC()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.didDisplayHandleOptions.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF4208()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_CommandEngagementFeedback.didSelectFromOptionsMenu.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF4404()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF45D0()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.destinationWasParpunchout.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF461C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.parPunchoutActionTarget.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF4648()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.cardSectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF4674()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.resultID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF4760()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF4984()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.cardSectionID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF49B0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.resultID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF4B04()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF4B50()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.input.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF4B7C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.uuid.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF4C00()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.queryID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF4CFC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.originatingApp.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF4E70()
{
  OUTLINED_FUNCTION_102();
  started = Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.isPhotosScopedSearch.getter();
  return OUTLINED_FUNCTION_96_0(started);
}

uint64_t sub_1B8CF4F14()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasUnspecifiedTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF4F60()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSortCriteriaTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF4FAC()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasLocationTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF4FF8()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasActionTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF5044()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasMediaTypeTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF5090()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasVisualQualityTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF50DC()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasNounTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF5128()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasTimeTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF5174()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasEventTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF51C0()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasGenericLocationTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF520C()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasCaptureDeviceTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF5258()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasFavoritedTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF52A4()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSourceAppTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF52F0()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF533C()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonSenderTokens_p.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF53E0()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isUnsafeQuery.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF542C()
{
  OUTLINED_FUNCTION_102();
  Understanding = Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isBlocklistedQuery.getter();
  return OUTLINED_FUNCTION_96_0(Understanding);
}

uint64_t sub_1B8CF6DE0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_ClientSession.agent.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF6E0C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_ClientSession.userGuidString.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF6E38()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_ClientSession.resourceVersions.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF6F08()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_ClientSession.removeTimestamps.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF6F54()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_ClientSession.parsecDeveloperID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF6F80()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_ClientSession.duEnabled.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF6FCC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_ClientSession.countryCode.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF6FF8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_ClientSession.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF7104()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_ClientSession.devicePersistentD20.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF71A8()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_ClientSession.isInternalCarry.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF71F4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_ClientSession.experimentInfo.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF7220()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_ClientSession.searchOptOut.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF726C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_ClientSession.jsonFeedback.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF7298()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_ClientSession.feedback.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF7368()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_Value.stringValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF7394()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_Value.BOOLValue.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF74C0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_Value.bytesValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF74EC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UserReportFeedback.timestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF7670()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UserReportFeedback.uuidBytes.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF769C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UserReportFeedback.sections.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF76C8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UserReportFeedback.uploadedDataIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8CF774C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.collectionStartTimestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF7798()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.collectionEndTimestamp.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF783C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.totalUsagesInCollectionPeriod.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF78F0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.configuredLookbackTimeInDays.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF793C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.activeDaysInCollectionPeriod.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF7988()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.totalEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF79D4()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Feedback_V2_UsageSinceLookback.isDiagnosticsAndUsageEnabled.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8CF7A20()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.invokedDays.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF7A6C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.zkwEngagedDays.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF7AB8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.searchedDays.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF7B04()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.suggestionOrAppleResultEngagedDays.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF7B50()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.webEngagedDays.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF7B9C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.voiceSearchDays.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF7BE8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_UsageSinceLookback.numSearchEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF8140()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SafariUsagePropensity.totalEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF81F4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SafariUsagePropensity.totalTopHitEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF8508()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.totalEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF891C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Feedback_V2_SpotlightUsagePropensity.totalTopHitEngagements.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8CF8C88()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_754();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D0, &qword_1B966F958);
    v7 = *(v2 + 48);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CF8D34()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      OUTLINED_FUNCTION_757();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D0, &qword_1B966F958);
      v7 = *(v2 + 48);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CF8DE0()
{
  OUTLINED_FUNCTION_468();
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_753();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
    v3 = OUTLINED_FUNCTION_115_1();
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_1B8CF8E78()
{
  OUTLINED_FUNCTION_365_0();
  v1 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
    OUTLINED_FUNCTION_115_1();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8CF8F0C()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_754();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CF8F6C()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_757();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CF8FE0(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *(a1 + 8);
    v3 = v2 >= 2;
    v4 = (v2 + 2147483646) & 0x7FFFFFFF;
    if (v3)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_678_0();
    v7 = OUTLINED_FUNCTION_699(v6);

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_1B8CF9054()
{
  OUTLINED_FUNCTION_468();
  if (v2 == 254)
  {
    *(v1 + 8) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_684_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CF90C0(uint64_t a1, int a2)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 16);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v7 = OUTLINED_FUNCTION_699(*(v2 + 80));

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }
}

void sub_1B8CF9138()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 254)
  {
    *(v1 + 16) = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 80));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CF91AC()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 32));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 48));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CF9210()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_845();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 48));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void sub_1B8CF927C()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_576_0();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_682_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CF92D8()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_622_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB9178, &unk_1B964D960);
    OUTLINED_FUNCTION_706_0();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CF9380()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_633_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB9178, &unk_1B964D960);
      OUTLINED_FUNCTION_682_0();
    }

    v5 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8CF9454()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 72));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_754();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
    v7 = *(v2 + 48);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CF9500()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 72) = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      OUTLINED_FUNCTION_757();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
      v7 = *(v2 + 48);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CF95B4(unsigned __int8 *a1, int a2)
{
  if (a2 == 254)
  {
    v2 = *a1;
    v3 = v2 >= 2;
    v4 = (v2 + 2147483646) & 0x7FFFFFFF;
    if (v3)
    {
      return (v4 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v6 = OUTLINED_FUNCTION_351_0();

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

void sub_1B8CF9628()
{
  OUTLINED_FUNCTION_468();
  if (v2 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_259_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CF96B4()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 64));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CF9718()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 64));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CF9778()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 24));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_362_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CF97D8()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_633_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CF9838()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 24));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_351_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CF9898()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_259_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CF9900()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 16));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_267_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
    OUTLINED_FUNCTION_622_0();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CF99A8()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_576_0();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
      OUTLINED_FUNCTION_633_0();
    }

    v5 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8CF9A4C()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 64));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_678_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
    OUTLINED_FUNCTION_754();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CF9AF4()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 64) = (v0 - 1);
  }

  else
  {
    v4 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_684_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
      OUTLINED_FUNCTION_757();
    }

    v7 = OUTLINED_FUNCTION_61_0(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1B8CF9BA4()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_266();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CF9C04()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_576_0();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CF9C60()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 72));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CF9CC4()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_576_0();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 72));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CF9D24()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 32));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 64);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0738, &qword_1B966F9C0);
    v7 = *(v2 + 68);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CF9DD4()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_845();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 64);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0738, &qword_1B966F9C0);
      v5 = *(v0 + 68);
    }

    v6 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_1B8CF9E84()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CF9EE8()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 16));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_622_0();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0750, &qword_1B966F9D8);
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_706_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0758, &qword_1B966F9E0);
      OUTLINED_FUNCTION_678_0();
    }
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8CF9FD8()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_576_0();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_633_0();
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0750, &qword_1B966F9D8);
      OUTLINED_FUNCTION_128_1(v5);
      if (*(v6 + 84) == v0)
      {
        OUTLINED_FUNCTION_682_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0758, &qword_1B966F9E0);
        OUTLINED_FUNCTION_684_0();
      }
    }

    v7 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1B8CFA0C4()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 16));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0760, &qword_1B966F9E8);
    OUTLINED_FUNCTION_267_0();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CFA16C()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_576_0();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0760, &qword_1B966F9E8);
      OUTLINED_FUNCTION_259_0();
    }

    v5 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8CFA210(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    return OUTLINED_FUNCTION_660_0(*(a1 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_351_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

uint64_t sub_1B8CFA274(uint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 == 12)
  {
    *(result + 8) = 0;
    *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_259_0();

    return __swift_storeEnumTagSinglePayload(v4 + v6, a2, a2, v5);
  }

  return result;
}

uint64_t sub_1B8CFA3B4()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 32));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_351_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CFA414()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_845();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_259_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CFA498()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 32));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_267_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
    OUTLINED_FUNCTION_622_0();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CFA540()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_845();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
      OUTLINED_FUNCTION_633_0();
    }

    v5 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8CFA5E4()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 16));
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_706_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0770, &unk_1B966F9F8);
    OUTLINED_FUNCTION_678_0();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CFA68C()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_576_0();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v2);
    if (*(v3 + 84) == v0)
    {
      OUTLINED_FUNCTION_682_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0770, &unk_1B966F9F8);
      OUTLINED_FUNCTION_684_0();
    }

    v5 = OUTLINED_FUNCTION_61_0(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_1B8CFA730()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_576_0();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_682_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CFA78C()
{
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_128_1(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_753();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_266();
    v4 = v1 + v6;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

uint64_t sub_1B8CFA824()
{
  OUTLINED_FUNCTION_365_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_258_0();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8CFA8C0()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_706_0();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CFA920()
{
  OUTLINED_FUNCTION_7();
  if (v0)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_682_0();
    v2 = OUTLINED_FUNCTION_61_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CFA97C()
{
  OUTLINED_FUNCTION_468();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    v3 = OUTLINED_FUNCTION_753();
  }

  else
  {
    sub_1B964C2B0();
    v3 = OUTLINED_FUNCTION_115_1();
  }

  return __swift_getEnumTagSinglePayload(v3, v0, v4);
}

uint64_t sub_1B8CFAA14()
{
  OUTLINED_FUNCTION_365_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  OUTLINED_FUNCTION_128_1(v1);
  if (*(v2 + 84) == v0)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_115_1();
  }

  OUTLINED_FUNCTION_81_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_1B8CFAAA8()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CFAB0C()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CFAB70()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 40));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_362_0();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CFABD0()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 40) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_633_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CFAC30()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 40);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_523_0();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

uint64_t sub_1B8CFAC78()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 40);
  sub_1B964C2B0();
  v2 = OUTLINED_FUNCTION_260_0();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1B8CFACC0()
{
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  OUTLINED_FUNCTION_128_1(v2);
  if (*(v3 + 84) == v0)
  {
    v4 = OUTLINED_FUNCTION_753();
  }

  else
  {
    if (v0 == 12)
    {
      OUTLINED_FUNCTION_676_0();
      return OUTLINED_FUNCTION_660_0(*(v6 + 8));
    }

    v8 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      OUTLINED_FUNCTION_678_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
      OUTLINED_FUNCTION_754();
    }

    v4 = v1 + v10;
  }

  return __swift_getEnumTagSinglePayload(v4, v0, v5);
}

void sub_1B8CFADC4()
{
  OUTLINED_FUNCTION_365_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0808, &qword_1B966FAA8);
  OUTLINED_FUNCTION_128_1(v2);
  if (*(v3 + 84) == v1)
  {
    OUTLINED_FUNCTION_231();
  }

  else
  {
    if (v1 == 12)
    {
      OUTLINED_FUNCTION_676_0();
      *v4 = 0;
      v4[1] = (((-v0 >> 2) & 3) - 4 * v0) << 60;
      return;
    }

    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v1)
    {
      OUTLINED_FUNCTION_684_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07F0, &qword_1B966FA90);
      OUTLINED_FUNCTION_757();
    }
  }

  OUTLINED_FUNCTION_81_0();

  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1B8CFAFE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1B8CFB070(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8CFB0F8()
{
  OUTLINED_FUNCTION_147_1();
  sub_1B8F2116C();
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C420();
}

uint64_t sub_1B8CFB578()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_266();
  v4 = OUTLINED_FUNCTION_699(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CFB5D8()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CFB654()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9138, &unk_1B964D920);
    OUTLINED_FUNCTION_266();
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CFB700()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9138, &unk_1B964D920);
      OUTLINED_FUNCTION_258_0();
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CFB7AC()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
    v7 = *(v2 + 28);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CFB858()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
      v7 = *(v2 + 28);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CFB928@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesRequest.QueryType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8CFBAA0@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.message.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8CFBAD0@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Hashtagimages_V1alpha_HashtagImagesResponse.Error.encryptedMessage.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8CFBBF0()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
    v6 = *(v1 + 36);
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CFBC9C()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = *(v0 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
      v5 = *(v0 + 36);
    }

    v6 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

uint64_t sub_1B8CFBD48()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    v4 = *(v1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_128_1(v6);
    if (*(v7 + 84) == v0)
    {
      v8 = *(v2 + 40);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2520, &qword_1B96809F8);
      v8 = *(v2 + 44);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void sub_1B8CFBE04()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 40) = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 40);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2520, &qword_1B96809F8);
      v7 = *(v2 + 44);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CFBEB4(uint64_t a1, int a2)
{
  if (a2 == 253)
  {
    v3 = *(a1 + 16);
    if (v3 <= 1)
    {
      return 0;
    }

    else
    {
      return v3 ^ 0xFF;
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
    v5 = OUTLINED_FUNCTION_699(*(v2 + 20));

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

uint64_t sub_1B8CFBF24(uint64_t result, char a2, int a3)
{
  if (a3 == 253)
  {
    *(result + 16) = ~a2;
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v3 + 20));

    return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  return result;
}

uint64_t sub_1B8CFBF90()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 24));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CFBFF0()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 24));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CFC050()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = v1[8];
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2528, &qword_1B9680A00);
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v0)
    {
      v6 = v1[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2530, &qword_1B9680A08);
      v6 = v1[10];
    }
  }

  v9 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8CFC148()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    v3 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v3);
    if (*(v4 + 84) == v1)
    {
      v5 = v0[8];
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2528, &qword_1B9680A00);
      OUTLINED_FUNCTION_128_1(v6);
      if (*(v7 + 84) == v1)
      {
        v5 = v0[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2530, &qword_1B9680A08);
        v5 = v0[10];
      }
    }

    v8 = OUTLINED_FUNCTION_61_0(v5);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CFC240()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 32));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CFC2A0()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 32));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CFC300()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_699(*(v0 + 28));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CFC360()
{
  OUTLINED_FUNCTION_7();
  if (v1)
  {
    OUTLINED_FUNCTION_237();
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v2 = OUTLINED_FUNCTION_61_0(*(v0 + 28));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B8CFC3C8@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Kg_V1alpha_EntityType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8CFC46C()
{
  OUTLINED_FUNCTION_147_1();
  sub_1B90495B8();
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C420();
}

uint64_t sub_1B8CFC4BC()
{
  OUTLINED_FUNCTION_147_1();
  sub_1B904960C();
  OUTLINED_FUNCTION_49_1();
  return sub_1B964C420();
}

uint64_t sub_1B8CFCA84()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
    v7 = *(v2 + 28);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CFCB30()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
      v7 = *(v2 + 28);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CFCBE4()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v4 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v4);
  if (*(v5 + 84) == v0)
  {
    OUTLINED_FUNCTION_194_1();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9128, &qword_1B964D910);
    OUTLINED_FUNCTION_266();
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CFCC8C()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v4 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v4);
    if (*(v5 + 84) == v2)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9128, &qword_1B964D910);
      OUTLINED_FUNCTION_258_0();
    }

    v7 = OUTLINED_FUNCTION_61_0(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t sub_1B8CFCD48()
{
  OUTLINED_FUNCTION_468();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  v3 = OUTLINED_FUNCTION_128_1(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_194_1();
    v6 = v1 + v7;
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

uint64_t sub_1B8CFCDE4()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  OUTLINED_FUNCTION_128_1(v3);
  if (*(v4 + 84) == v2)
  {
    v5 = OUTLINED_FUNCTION_231();
  }

  else
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_196_2();
    v5 = v1 + v7;
  }

  return __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
}

uint64_t sub_1B8CFCE80()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CFCEE0()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CFCF40()
{
  OUTLINED_FUNCTION_468();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_128_1(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9128, &qword_1B964D910);
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v0)
    {
      OUTLINED_FUNCTION_194_1();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9110, &qword_1B964D900);
      OUTLINED_FUNCTION_266();
    }

    v6 = v1 + v9;
  }

  return __swift_getEnumTagSinglePayload(v6, v0, v5);
}

uint64_t sub_1B8CFD024()
{
  OUTLINED_FUNCTION_178_0();
  OUTLINED_FUNCTION_468();
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v3);
  if (*(v4 + 84) == v2)
  {
    v5 = OUTLINED_FUNCTION_231();
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9128, &qword_1B964D910);
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v2)
    {
      OUTLINED_FUNCTION_196_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9110, &qword_1B964D900);
      OUTLINED_FUNCTION_258_0();
    }

    v5 = v1 + v9;
  }

  return __swift_storeEnumTagSinglePayload(v5, v0, v0, v6);
}

uint64_t sub_1B8CFD108()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CFD168()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CFD1C8()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 16));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9110, &qword_1B964D900);
    v7 = *(v2 + 36);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CFD278()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9110, &qword_1B964D900);
      v7 = *(v2 + 36);
    }

    v8 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_1B8CFD330()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 24));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_266();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9100, &unk_1B964D8F0);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = *(v2 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
      v7 = *(v2 + 32);
    }
  }

  v10 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1B8CFD428()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_178_0();
    v5 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      OUTLINED_FUNCTION_258_0();
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9100, &unk_1B964D8F0);
      OUTLINED_FUNCTION_128_1(v8);
      if (*(v9 + 84) == v3)
      {
        v7 = *(v2 + 28);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
        v7 = *(v2 + 32);
      }
    }

    v10 = OUTLINED_FUNCTION_61_0(v7);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1B8CFD528()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 24));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CFD588()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CFD5E8()
{
  OUTLINED_FUNCTION_19_1();
  if (v1)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 16));
  }

  OUTLINED_FUNCTION_24_1();
  v3 = OUTLINED_FUNCTION_48_1();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_1B8CFD648()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_258_0();
    v4 = OUTLINED_FUNCTION_61_0(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1B8CFD708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 40);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
      v10 = *(a3 + 44);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1B8CFD7E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 40);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
      v10 = *(a4 + 44);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8CFDA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
    v12 = OUTLINED_FUNCTION_128_1(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1B8CFDB84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
    v14 = OUTLINED_FUNCTION_128_1(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1B8CFDC7C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = a3[7];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a2)
      {
        v11 = v14;
        v12 = a3[8];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2D30, &unk_1B96E8F80);
        v12 = a3[9];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v12, a2, v11);
  }
}

uint64_t sub_1B8CFDD9C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = OUTLINED_FUNCTION_128_1(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = a4[7];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
      v14 = OUTLINED_FUNCTION_128_1(v13);
      if (*(v15 + 84) == a3)
      {
        v11 = v14;
        v12 = a4[8];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2D30, &unk_1B96E8F80);
        v12 = a4[9];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v12, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B8CFE1F0(uint64_t a1, int a2, int *a3)
{
  v5 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == a2)
  {
    v7 = a3[5];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
    OUTLINED_FUNCTION_128_1(v8);
    if (*(v9 + 84) == a2)
    {
      v7 = a3[6];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E50, &qword_1B9683AF8);
      OUTLINED_FUNCTION_128_1(v10);
      if (*(v11 + 84) == a2)
      {
        v7 = a3[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E58, &qword_1B9683B00);
        v7 = a3[8];
      }
    }
  }

  v12 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v12, v13, v14);
}

uint64_t sub_1B8CFE328(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v7 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v7);
  if (*(v8 + 84) == a3)
  {
    v9 = a4[5];
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
    OUTLINED_FUNCTION_128_1(v10);
    if (*(v11 + 84) == a3)
    {
      v9 = a4[6];
    }

    else
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E50, &qword_1B9683AF8);
      OUTLINED_FUNCTION_128_1(v12);
      if (*(v13 + 84) == a3)
      {
        v9 = a4[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2E58, &qword_1B9683B00);
        v9 = a4[8];
      }
    }
  }

  v14 = OUTLINED_FUNCTION_699(v9);

  return __swift_storeEnumTagSinglePayload(v14, v15, a2, v16);
}

uint64_t sub_1B8CFE468(uint64_t a1, int a2)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_128_1(v6);
    if (*(v7 + 84) == v2)
    {
      v8 = *(v3 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
      v8 = *(v3 + 24);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void *sub_1B8CFE538(void *result, uint64_t a2, int a3)
{
  v6 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_213_0();
    v8 = OUTLINED_FUNCTION_128_1(v7);
    if (*(v9 + 84) == v4)
    {
      v10 = v8;
      v11 = *(v3 + 20);
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
      v11 = *(v3 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v6 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1B8CFE604()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 24));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90D0, &qword_1B964D8C0);
    v7 = *(v2 + 28);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CFE6B4()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90D0, &qword_1B964D8C0);
      v7 = *(v2 + 28);
    }

    v8 = OUTLINED_FUNCTION_699(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v0, v10);
  }
}

uint64_t sub_1B8CFE768()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
    v7 = *(v2 + 36);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CFE818()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
      v7 = *(v2 + 36);
    }

    v8 = OUTLINED_FUNCTION_699(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v0, v10);
  }
}

uint64_t sub_1B8CFE8CC()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*(v1 + 24));
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
    v7 = *(v2 + 32);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CFE97C()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_128_1(v5);
    if (*(v6 + 84) == v3)
    {
      v7 = *(v2 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
      v7 = *(v2 + 32);
    }

    v8 = OUTLINED_FUNCTION_699(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v0, v10);
  }
}

uint64_t sub_1B8CFEA70()
{
  OUTLINED_FUNCTION_691();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  v5 = v1;
  sub_1B964C2B0();
  v6 = OUTLINED_FUNCTION_699(*(v5 + 24));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8CFEAE4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_1B964C2B0();
    v8 = OUTLINED_FUNCTION_699(*(v7 + 24));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_1B8CFEB5C()
{
  OUTLINED_FUNCTION_691();
  if (v1 == v3)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 24));
  }

  v5 = v2;
  if (*(*(sub_1B964C2B0() - 8) + 84) == v1)
  {
    v6 = *(v5 + 36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3030, &qword_1B9684520);
    v6 = *(v5 + 40);
  }

  v7 = OUTLINED_FUNCTION_699(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_1B8CFEC20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_691();
  if (v4 == v6)
  {
    *(v2 + 24) = (a2 - 1);
  }

  else
  {
    v7 = v5;
    if (*(*(sub_1B964C2B0() - 8) + 84) == v4)
    {
      v8 = *(v7 + 36);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3030, &qword_1B9684520);
      v8 = *(v7 + 40);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, a2, v11);
  }
}

uint64_t sub_1B8CFEDB0()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 24));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CFEE14()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_61_0(*(v4 + 36));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8CFEE80()
{
  OUTLINED_FUNCTION_19_1();
  if (v3)
  {
    return OUTLINED_FUNCTION_700(*v1);
  }

  v5 = OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_128_1(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
    v7 = *(v2 + 24);
  }

  v8 = OUTLINED_FUNCTION_699(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_1B8CFEF30()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
      v9 = *(v5 + 24);
    }

    v10 = OUTLINED_FUNCTION_61_0(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

uint64_t sub_1B8CFEFF4()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 20));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8CFF058()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_61_0(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8CFF0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3168, &unk_1B9684898);
    v10 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1B8CFF168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v8);
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_231();
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3168, &unk_1B9684898);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v11);
}

uint64_t sub_1B8CFF274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1B8CFF358(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8CFF47C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  if (*(*(sub_1B964C2B0() - 8) + 84) == a2)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
    v5 = *(a3 + 28);
  }

  v6 = OUTLINED_FUNCTION_699(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_1B8CFF540()
{
  OUTLINED_FUNCTION_7();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(sub_1B964C2B0() - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
      v8 = *(v5 + 28);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1B8CFF604(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(a3 + 48));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8CFF678()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 48));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8CFF860@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.traceID.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8CFFA20@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Responseframework_Engagement_V1alpha_EngagementResponse.serviceDebug.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8CFFA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_28_1();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
    v12 = OUTLINED_FUNCTION_128_1(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
      v14 = *(a3 + 24);
    }

    v10 = v3 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1B8CFFB3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_28_1();
  v8 = sub_1B964C2B0();
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
    v14 = OUTLINED_FUNCTION_128_1(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
      v16 = *(a4 + 24);
    }

    v12 = v4 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1B8CFFC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B8CFFCD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_28_1();
  v8 = sub_1B964C2B0();
  result = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B8CFFDAC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_7_8();
  }

  sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_699(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_1B8CFFE20()
{
  OUTLINED_FUNCTION_468();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8CFFE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_468();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v4 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, v3, v7);
}

uint64_t sub_1B8CFFF3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_468();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90B0, &unk_1B964D8A0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v5;
  }

  else
  {
    v9 = sub_1B964C2B0();
    v10 = v5 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, v4, v4, v9);
}

uint64_t sub_1B8D00050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 56);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
      v10 = *(a3 + 60);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1B8D00128(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 56);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2CB0, &qword_1B96835C0);
      v10 = *(a4 + 60);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1B8D004CC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  v6 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = *(a3 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36A0, &qword_1B96866C0);
    v8 = *(a3 + 28);
  }

  v9 = OUTLINED_FUNCTION_699(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8D00590()
{
  OUTLINED_FUNCTION_468();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36A0, &qword_1B96866C0);
      v8 = *(v4 + 28);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1B8D00658(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_468();
  v6 = sub_1B964C2B0();
  v7 = OUTLINED_FUNCTION_128_1(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
    v12 = OUTLINED_FUNCTION_128_1(v11);
    if (*(v13 + 84) == v3)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
      v16 = OUTLINED_FUNCTION_128_1(v15);
      if (*(v17 + 84) == v3)
      {
        v9 = v16;
        v14 = a3[6];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36A8, &qword_1B96866C8);
        v14 = a3[7];
      }
    }

    v10 = v4 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, v3, v9);
}

uint64_t sub_1B8D00790(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_468();
  v8 = sub_1B964C2B0();
  v9 = OUTLINED_FUNCTION_128_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v5;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2228, &unk_1B967FDC0);
    v14 = OUTLINED_FUNCTION_128_1(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABED40, &qword_1B96809F0);
      v18 = OUTLINED_FUNCTION_128_1(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC36A8, &qword_1B96866C8);
        v16 = a4[7];
      }
    }

    v12 = v5 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, v4, v4, v11);
}

uint64_t sub_1B8D008D0(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 24));
  }

  v6 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = a3[7];
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
    OUTLINED_FUNCTION_128_1(v9);
    if (*(v10 + 84) == a2)
    {
      v8 = a3[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3570, &unk_1B9685F60);
      v8 = a3[9];
    }
  }

  v11 = OUTLINED_FUNCTION_699(v8);

  return __swift_getEnumTagSinglePayload(v11, v12, v13);
}

void sub_1B8D009E0()
{
  OUTLINED_FUNCTION_468();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = v4[7];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9188, &qword_1B964D970);
      OUTLINED_FUNCTION_128_1(v9);
      if (*(v10 + 84) == v5)
      {
        v8 = v4[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3570, &unk_1B9685F60);
        v8 = v4[9];
      }
    }

    v11 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v11, v12, v0, v13);
  }
}

uint64_t sub_1B8D00CBC()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D00D20()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_61_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8D00D8C()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*(v0 + 8));
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 36));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D00DF0()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_61_0(*(v4 + 36));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8D00E5C()
{
  OUTLINED_FUNCTION_19_1();
  if (v2)
  {
    return OUTLINED_FUNCTION_700(*v0);
  }

  OUTLINED_FUNCTION_24_1();
  v4 = OUTLINED_FUNCTION_699(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1B8D00EC0()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_61_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1B8D01180(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*(a1 + 8));
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38F0, &qword_1B9687960);
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = a3[6];
  }

  else
  {
    v9 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v9);
    if (*(v10 + 84) == a2)
    {
      v8 = a3[7];
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
      OUTLINED_FUNCTION_128_1(v11);
      if (*(v12 + 84) == a2)
      {
        v8 = a3[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38E8, &qword_1B9687958);
        v8 = a3[9];
      }
    }
  }

  v13 = OUTLINED_FUNCTION_699(v8);

  return __swift_getEnumTagSinglePayload(v13, v14, v15);
}

void sub_1B8D012DC()
{
  OUTLINED_FUNCTION_468();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38F0, &qword_1B9687960);
    OUTLINED_FUNCTION_128_1(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = v4[6];
    }

    else
    {
      v9 = sub_1B964C2B0();
      OUTLINED_FUNCTION_128_1(v9);
      if (*(v10 + 84) == v5)
      {
        v8 = v4[7];
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
        OUTLINED_FUNCTION_128_1(v11);
        if (*(v12 + 84) == v5)
        {
          v8 = v4[8];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC38E8, &qword_1B9687958);
          v8 = v4[9];
        }
      }
    }

    v13 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v13, v14, v0, v15);
  }
}

uint64_t sub_1B8D0143C()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 20);
  v4 = sub_1B964C2B0();

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_1B8D0148C()
{
  OUTLINED_FUNCTION_468();
  v3 = *(v2 + 20);
  v4 = sub_1B964C2B0();

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_1B8D014E0(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*a1);
  }

  v6 = sub_1B964C2B0();
  OUTLINED_FUNCTION_128_1(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = *(a3 + 20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3908, &qword_1B9687978);
    v8 = *(a3 + 24);
  }

  v9 = OUTLINED_FUNCTION_699(v8);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_1B8D015A4()
{
  OUTLINED_FUNCTION_468();
  if (v2 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_1B964C2B0();
    OUTLINED_FUNCTION_128_1(v6);
    if (*(v7 + 84) == v5)
    {
      v8 = *(v4 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3908, &qword_1B9687978);
      v8 = *(v4 + 24);
    }

    v9 = OUTLINED_FUNCTION_699(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_1B8D01670@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Search_PegasusQueryContext.HourFormat.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8D01758()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.secretKey.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D01784()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.countryCode.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D017B0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.locale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D017DC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.effectiveSystemLanguage.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D01808()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.preferredLanguages.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D01834()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.storeFront.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D01860()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.userGuid.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D0188C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.timeZone.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D018B8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.skuRegion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D018E4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.calendar.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D01BD8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D01C54()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Search_PegasusQueryContext.internalBuild.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D01CA0()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Search_PegasusQueryContext.seedBuild.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D01CEC()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Search_PegasusQueryContext.hsEnabled.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D01D38()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Search_PegasusQueryContext.managedDevice.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D01D84()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.abTestSeed.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D01DD4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.siriLocale.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D01E00()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.region.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D01E2C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.sil.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D01E58()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.trialIdentifiers.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D01E84()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.ampBaselineExperimentMetadata.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D01EB0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.siriResponseLanguageVariant.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D01F54()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.deviceModel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D01F80()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Search_PegasusQueryContext.isGenerativeModelDevice.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D01FCC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.companionDevice.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D02070()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Search_PegasusQueryContext.searchOptOut.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D020BC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.longSecretKey.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D020E8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.keyboardIme.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D0218C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_PegasusQueryContext.encryptedAuthToken.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_313();
  v6 = sub_1B964C2B0();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_700(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_1B8D022CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1B8D02378()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_1B964C2B0();
    v3 = OUTLINED_FUNCTION_48_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

void sub_1B8D023E4()
{
  OUTLINED_FUNCTION_7();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    sub_1B964C2B0();
    v3 = OUTLINED_FUNCTION_48_1();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_1B8D02450(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_700(*a1);
  }

  v7 = sub_1B964C2B0();
  v8 = a1 + *(a3 + 28);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void sub_1B8D024CC()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    v5 = sub_1B964C2B0();
    v6 = v1 + *(v4 + 28);

    __swift_storeEnumTagSinglePayload(v6, v0, v0, v5);
  }
}

uint64_t sub_1B8D02544@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Search_Error.message.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8D02574@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Search_Error.encryptedMessage.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B8D025A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 <= 1)
    {
      return 0;
    }

    else
    {
      return v4 ^ 0xFF;
    }
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8D02624(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = ~a2;
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8D026B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B964C2B0();
    v9 = a1 + *(a3 + 40);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1B8D02740(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B964C2B0();
    v8 = v5 + *(a4 + 40);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B8D02A00()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.domain.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02A84()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.identifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02AB0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.canonicalID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02B2C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.feedbackResult.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02B58()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.sectionKey.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02BDC()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Search_V1alpha_SearchResult.preferTopPlatter.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D02C28()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.placement.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02C54()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.hideRank.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D02CA0()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.sectionBundleID.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02CCC()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.entityType.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02CF8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.serverFeatures.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D02D24()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Search_V1alpha_SearchResult.filtered.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D02D70()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.query.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02D9C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.blockID.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1B8D02DE8()
{
  OUTLINED_FUNCTION_102();
  v0 = Apple_Parsec_Search_V1alpha_SearchResult.doNotFold.getter();
  return OUTLINED_FUNCTION_96_0(v0);
}

uint64_t sub_1B8D02E34()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.entityIdentifier.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02E60()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.sectionHeader.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02E8C()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.completion.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02EB8()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.url.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02EE4()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.moreResultsLabel.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1B8D02F10()
{
  OUTLINED_FUNCTION_102();
  result = Apple_Parsec_Search_V1alpha_SearchResult.moreResultsURL.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}